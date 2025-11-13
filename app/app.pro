include(../defaults.pri)

TEMPLATE = app
TARGET = $$TARGET_NAME
CONFIG += c++11
QT += widgets

SOURCES += main.cpp

LIBS += -l$$TARGET_NAME

