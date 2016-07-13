#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include "tcamera.h"
#include "Recognizer.h"
#include "ftpthread.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
private slots:
    void imgCapture();
    void imgStream();
    void on_pushButton_12_clicked();
    void on_open_pushButton_clicked();
    void on_mark_pushButton_clicked();
    void on_detect_pushButton_clicked();
    void on_dataupdate_pushButton_clicked();
    void on_swupdate_pushButton_clicked();
    void on_up_pushButton_clicked();
    void on_down_pushButton_clicked();
    void on_zin_pushButton_clicked();
    void on_zout_pushButton_clicked();
    void on_left_pushButton_clicked();
    void on_right_pushButton_clicked();
    void on_checkBox_toggled(bool checked);

private:
    void cleanScreen();

private:
    Ui::MainWindow *ui;
    Tcamera *m_camera;
    QTimer *m_timer_stream;
    QTimer *m_timer_captrue;
    FtpThread ftp;
    Recognizer *reg;
    uint8 *rgbImg,*yuyvImg,*grayImg,*recImg,*recGrayImg,*tempBuf1,*tempBuf2;
    imageRecParam irp;
    QVector<QRgb> my_table;
    int savenum;
    bool isTestMode;
//	FtpThread ftpThread;
//	KeyThread keyThread;
    void download();
    void initCam();
    void uninitCam();
    void recog();
    time_t testmode_time;
};

#endif // MAINWINDOW_H
