include(../defaults.pri)
QT += widgets
CONFIG += c++17

TARGET = $$TARGET_NAME

TEMPLATE = lib

SOURCES += \
    mainwindow.cpp \

HEADERS += \
    mainwindow.h \

include(../res/res.pri)
