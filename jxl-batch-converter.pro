QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# Check for Windows and adjust compiler flags
win32 {
    # Add necessary flags for Windows build
    QMAKE_CXXFLAGS += -fno-keep-inline-dllexport
}

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    conversionthread.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    conversionthread.h \
    logcodes.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
