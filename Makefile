#############################################################################
# Makefile for building: GeneralRecog
# Generated by qmake (3.0) (Qt 5.3.2)
# Project:  GeneralRecog.pro
# Template: app
# Command: /usr/lib/arm-linux-gnueabihf/qt5/bin/qmake -o Makefile GeneralRecog.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I. -isystem /usr/include/arm-linux-gnueabihf/qt5 -isystem /usr/include/arm-linux-gnueabihf/qt5/QtWidgets -isystem /usr/include/arm-linux-gnueabihf/qt5/QtGui -isystem /usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS) -lQt5Widgets -lQt5Gui -lQt5Core -lGLESv2 -lpthread -lcurl -lwiringPi -L./ -lRecog
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/arm-linux-gnueabihf/qt5/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		tcamera.cpp \
		imgpro.cpp \
		ftpthread.cpp \
		messageform.cpp moc_mainwindow.cpp \
		moc_ftpthread.cpp \
		moc_messageform.cpp
OBJECTS       = main.o \
		mainwindow.o \
		tcamera.o \
		imgpro.o \
		ftpthread.o \
		messageform.o \
		moc_mainwindow.o \
		moc_ftpthread.o \
		moc_messageform.o
DIST          = /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		GeneralRecog.pro main.cpp \
		mainwindow.cpp \
		tcamera.cpp \
		imgpro.cpp \
		ftpthread.cpp \
		messageform.cpp
QMAKE_TARGET  = GeneralRecog
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = GeneralRecog


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h ui_messageform.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: GeneralRecog.pro /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		GeneralRecog.pro \
		/usr/lib/arm-linux-gnueabihf/libQt5Widgets.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Core.prl
	$(QMAKE) -o Makefile GeneralRecog.pro
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/shell-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_designer.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_help.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_uitools.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf:
GeneralRecog.pro:
/usr/lib/arm-linux-gnueabihf/libQt5Widgets.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile GeneralRecog.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/GeneralRecog1.0.0 || mkdir -p .tmp/GeneralRecog1.0.0
	$(COPY_FILE) --parents $(DIST) .tmp/GeneralRecog1.0.0/ && $(COPY_FILE) --parents mainwindow.h tcamera.h sdf.h imgpro.h Rbmp.h Rcomdef.h Recognizer.h ftpthread.h messageform.h .tmp/GeneralRecog1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp tcamera.cpp imgpro.cpp ftpthread.cpp messageform.cpp .tmp/GeneralRecog1.0.0/ && $(COPY_FILE) --parents mainwindow.ui messageform.ui .tmp/GeneralRecog1.0.0/ && (cd `dirname .tmp/GeneralRecog1.0.0` && $(TAR) GeneralRecog1.0.0.tar GeneralRecog1.0.0 && $(COMPRESS) GeneralRecog1.0.0.tar) && $(MOVE) `dirname .tmp/GeneralRecog1.0.0`/GeneralRecog1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/GeneralRecog1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all: moc_mainwindow.cpp moc_ftpthread.cpp moc_messageform.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_ftpthread.cpp moc_messageform.cpp
moc_mainwindow.cpp: tcamera.h \
		sdf.h \
		Recognizer.h \
		NetParam.h \
		Rcomdef.h \
		ftpthread.h \
		messageform.h \
		mainwindow.h
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/GeneralRecog_recog -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/4.9 -I/usr/include/arm-linux-gnueabihf/c++/4.9 -I/usr/include/c++/4.9/backward -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include mainwindow.h -o moc_mainwindow.cpp

moc_ftpthread.cpp: ftpthread.h
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/GeneralRecog_recog -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/4.9 -I/usr/include/arm-linux-gnueabihf/c++/4.9 -I/usr/include/c++/4.9/backward -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include ftpthread.h -o moc_ftpthread.cpp

moc_messageform.cpp: messageform.h
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/GeneralRecog_recog -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/4.9 -I/usr/include/arm-linux-gnueabihf/c++/4.9 -I/usr/include/c++/4.9/backward -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/4.9/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include messageform.h -o moc_messageform.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h ui_messageform.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h ui_messageform.h
ui_mainwindow.h: mainwindow.ui
	/usr/lib/arm-linux-gnueabihf/qt5/bin/uic mainwindow.ui -o ui_mainwindow.h

ui_messageform.h: messageform.ui
	/usr/lib/arm-linux-gnueabihf/qt5/bin/uic messageform.ui -o ui_messageform.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		tcamera.h \
		sdf.h \
		Recognizer.h \
		NetParam.h \
		Rcomdef.h \
		ftpthread.h \
		messageform.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		tcamera.h \
		sdf.h \
		Recognizer.h \
		NetParam.h \
		Rcomdef.h \
		ftpthread.h \
		messageform.h \
		ui_mainwindow.h \
		imgpro.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

tcamera.o: tcamera.cpp tcamera.h \
		sdf.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tcamera.o tcamera.cpp

imgpro.o: imgpro.cpp imgpro.h \
		sdf.h \
		Rbmp.h \
		Rcomdef.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o imgpro.o imgpro.cpp

ftpthread.o: ftpthread.cpp ftpthread.h \
		imgpro.h \
		sdf.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ftpthread.o ftpthread.cpp

messageform.o: messageform.cpp messageform.h \
		ui_messageform.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o messageform.o messageform.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_ftpthread.o: moc_ftpthread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ftpthread.o moc_ftpthread.cpp

moc_messageform.o: moc_messageform.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_messageform.o moc_messageform.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

