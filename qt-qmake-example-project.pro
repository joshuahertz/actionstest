INCLUDEPATH += $$PWD/src
SRC_DIR = $$PWD

TEMPLATE = app
TARGET = $$TARGET_NAME
CONFIG += c++17
QT += core gui widgets concurrent network printsupport charts networkauth designer

LIBS += -L$$DESTDIR
LIBS += -l$$TARGET_NAME

LOCAL_RES = "$$PWD/res"
TARGET_NAME = "qt-qmake-test"

DESTDIR = $$PWD/build/

QMAKE_CXXFLAGS_RELEASE += -O2

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

SOURCES += \
    app/main.cpp \
    src/mainwindow.cpp \

HEADERS += \
    src/mainwindow.h \

FORMS += \
    res/mainwindow.ui

TARGET = $$TARGET_NAME

include(../res/res.pri)

SUBDIRS = \
    src \
    app \
    tests

app.depends = src
tests.depends = src

OTHER_FILES += \
    defaults.pri
