#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "imgpro.h"
#include <time.h>

int FRAME_WIDTH = 640;
int FRAME_HEIGHT = 480;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    initCam();
    reg = new Recognizer();
    reg->init();
    m_timer_stream = new QTimer ( this );
    m_timer_stream->start(33);
    connect ( m_timer_stream , SIGNAL (timeout ()), this , SLOT (imgStream()));

//    m_timer_captrue = new QTimer ( this );
//    m_timer_captrue->start(2000);
//    connect ( m_timer_captrue , SIGNAL (timeout ()), this , SLOT (imgCapture()));

    //this->setStyleSheet("background-color:#676767;");

    this->setWindowFlags(Qt::FramelessWindowHint);
    ui->open_pushButton->setEnabled(true);

    m_camera->v4l2_init();
    if(m_camera->initFlag)
    {
        ui->open_pushButton->setText("关闭摄像头");
    }else
    {
        ui->open_pushButton->setText("打开摄像头");
    }
    ui->res_label->setAlignment(Qt::AlignCenter);

    cleanScreen();

//    ui->dataupdate_pushButton->setVisible(false);
    ui->pushButton_12->setVisible(false);

    msgForm = new MessageForm();
    msgForm->hide();
    msgForm->move(342,190);

    isTestMode = false;
    ftp.start();
}

void MainWindow::cleanScreen()
{
    QImage img = QImage (( const uchar *) rgbImg , FRAME_WIDTH , FRAME_HEIGHT , QImage :: Format_RGB888 );
    cleanImg(&img,FRAME_WIDTH,FRAME_HEIGHT);
    ui -> cam_label -> setPixmap ( QPixmap :: fromImage ( img ));
    QImage img_a = QImage (( const uchar *) recImg , irp.recWidth , irp.recHeight , QImage :: Format_RGB888 );
    cleanImg(&img_a,irp.recWidth ,irp.recHeight);
    ui -> capture_label -> setPixmap ( QPixmap :: fromImage ( img ));
    QImage img_b = QImage (( const uchar *) recImg , REC_ZONE_WIDTH , REC_ZONE_HEIGHT , QImage :: Format_RGB888 );
    cleanImg(&img_b,REC_ZONE_WIDTH ,REC_ZONE_WIDTH);
    ui -> capture_littile_label -> setPixmap ( QPixmap :: fromImage ( img ));
}

void MainWindow::imgStream()
{
    if(m_camera->initFlag)
    {
        int length;
        m_camera->read_frame_from_camera( yuyvImg, &length);
        convert_YUYV_to_RGB24_Y(FRAME_WIDTH, FRAME_HEIGHT, yuyvImg, rgbImg,grayImg);
        QImage img = QImage (( const uchar *) rgbImg , FRAME_WIDTH , FRAME_HEIGHT , QImage :: Format_RGB888 );
        if(irp.isDisplay){
            drawRectangle(&img,irp.x,irp.y,irp.recWidth,irp.recHeight);
        }
        ui -> cam_label -> setPixmap ( QPixmap :: fromImage ( img ));
    }
}

void MainWindow::imgCapture()
{
//    if(m_camera->initFlag)
//    {
//        downRGBBy2x2(downsample,rgbImg,FRAME_WIDTH,FRAME_HEIGHT);
//        QImage img = QImage (( const uchar *) downsample , FRAME_WIDTH / 2, FRAME_HEIGHT /2 , QImage :: Format_RGB888 );
//        ui ->capture_label -> setPixmap ( QPixmap :: fromImage ( img ));
//    }
}

MainWindow::~MainWindow()
{
    if(m_camera->initFlag)
    {
        m_camera->v4l2_close();
    }
    delete ui;
    delete m_camera;
    uninitCam();
}

void MainWindow::initCam()
{
    for(int i = 0; i < 256; i++)
        my_table.push_back(qRgb(i,i,i));

    grayImg = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT );
    recGrayImg = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT );
    tempBuf1 = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT );
    tempBuf2 = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT );
    yuyvImg = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT*2);
    rgbImg = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT * 3);
    recImg = (uint8 *)malloc(FRAME_WIDTH * FRAME_HEIGHT*3);

    irp.isDisplay = 1;
    irp.recHeight = RECTANGLE_MARKER_HEIGHT;
    irp.recWidth = RECTANGLE_MARKER_WIDTH;
    irp.x = RECTANGLE_MARKER_START_X;
    irp.y = RECTANGLE_MARKER_START_Y;
    irp.step = 8;
    savenum = 0;
    ftp.init(0);
    m_camera = new Tcamera(FRAME_WIDTH,FRAME_HEIGHT);
}

void MainWindow::uninitCam()
{
    free(rgbImg);
    free(yuyvImg);
    free(grayImg);
    free(recImg);
    free(recGrayImg);
    free(tempBuf1);
    free(tempBuf2);
}

void MainWindow::download()
{

}

void MainWindow::recog()
{
    char aa[20]={0};
    char bb[20]={0};

    getBMPReczone(rgbImg,FRAME_WIDTH,FRAME_HEIGHT,irp.x,irp.y,irp.recWidth,irp.recHeight,recImg);
    getGRAYReczone(grayImg,FRAME_WIDTH,FRAME_HEIGHT,irp.x,irp.y,irp.recWidth,irp.recHeight,recGrayImg);

    int nDiffRet;
    int threshold = detectThreshold(100, nDiffRet,recGrayImg,irp.recWidth,irp.recHeight);
    int zoneX,zoneY,zoneWidth,zoneHeight;

    if(0== getIntereZone(recGrayImg,irp.recWidth,irp.recHeight,threshold,&zoneX,&zoneY,&zoneWidth,&zoneHeight)){
        getGRAYReczone(recGrayImg,irp.recWidth,irp.recHeight,zoneX,zoneY,zoneWidth,zoneHeight,tempBuf1);
        QImage img = QImage (( const uchar *) recImg , irp.recWidth , irp.recHeight , QImage :: Format_RGB888 );
        ResizeLinear(tempBuf2,REC_ZONE_WIDTH,REC_ZONE_HEIGHT,tempBuf1,zoneWidth,zoneHeight);

        int val =reg->recognize((void *)tempBuf2,REC_ZONE_WIDTH,REC_ZONE_HEIGHT,1);
        sprintf(aa,"%d",val);
//        writeGPIO(val);
        QImage img2 = QImage(( const uchar *) tempBuf2,REC_ZONE_WIDTH,REC_ZONE_HEIGHT, QImage::Format_Indexed8);
        img2.setColorTable(my_table);
        if(isTestMode)
        {
            sprintf(bb,IMAGESACEPATH,testmode_time,savenum++);
            saveBMPFromGrayImg(bb,tempBuf2,REC_ZONE_WIDTH,REC_ZONE_HEIGHT);
            ftp.setNum(savenum);
        }
        ui -> capture_label -> setPixmap ( QPixmap :: fromImage ( img ));
        ui -> capture_littile_label -> setPixmap ( QPixmap :: fromImage ( img2 ));
        ui->res_label->setText(aa);
    }
}

void MainWindow::on_mark_pushButton_clicked()
{
    irp.isDisplay = irp.isDisplay==0?1:0;
}

void MainWindow::on_detect_pushButton_clicked()
{
    recog();
}

void MainWindow::on_dataupdate_pushButton_clicked()
{

}

void MainWindow::on_swupdate_pushButton_clicked()
{
    FTP_OPT ftp_opt;
    ftp_opt.url = "ftp://115.29.193.236/param/rec_1/GeneralRecog";
    ftp_opt.file = "/home/program/temp/GeneralRecog";
    ftp_opt.user_key = "myftp:880414";
    if(FTP_DOWNLOAD_SUCCESS == ftp_download(ftp_opt))
    {
        msgForm->setMsg(QString("程序更新成功,请重启机器！"));
        msgForm->show();
    }
    else
    {
        msgForm->setMsg(QString("程序更新失败！"));
        msgForm->show();
    }
}


void MainWindow::on_up_pushButton_clicked()
{
    if(irp.y>irp.step){
        irp.y -= irp.step;
    }
}

void MainWindow::on_down_pushButton_clicked()
{
    if(irp.y+irp.step+irp.recHeight<FRAME_HEIGHT){
        irp.y += irp.step;
    }
}

void MainWindow::on_zin_pushButton_clicked()
{
    if(irp.recHeight+irp.step<FRAME_HEIGHT && irp.recWidth+irp.step<FRAME_WIDTH){
        irp.recHeight += irp.step;
        irp.recWidth += irp.step;
    }
}

void MainWindow::on_zout_pushButton_clicked()
{
    if(irp.recHeight> REC_ZONE_HEIGHT && irp.recWidth> REC_ZONE_WIDTH){
        irp.recHeight -= irp.step;
        irp.recWidth -= irp.step;
    }
}

void MainWindow::on_left_pushButton_clicked()
{
    if(irp.x>irp.step){
        irp.x -= irp.step;
    }
}

void MainWindow::on_right_pushButton_clicked()
{
    if(irp.x+irp.step+irp.recWidth<FRAME_WIDTH){
        irp.x+= irp.step;
    }
}


void MainWindow::on_pushButton_12_clicked()
{
    ftp.stop();
    qApp->exit(0);
}

void MainWindow::on_open_pushButton_clicked()
{
    if(m_camera->initFlag)
    {
        if(SUCCESS==m_camera->v4l2_close()){
            ui->open_pushButton->setText("打开摄像头");
            cleanScreen();
        }

    }else
    {
        if(SUCCESS==m_camera->v4l2_init()){
            ui->open_pushButton->setText("关闭摄像头");
        }
    }
}


void MainWindow::on_checkBox_toggled(bool checked)
{
    if(checked)
    {
        isTestMode = true;
        savenum = 0;
        ftp.init(savenum);
        time(&testmode_time);
        ftp.testmode_time = testmode_time;
    }else
    {
        isTestMode = false;
    }
}
