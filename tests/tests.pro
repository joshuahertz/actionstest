include(../defaults.pri)
TEMPLATE = app
TARGET = test-$$TARGET_NAME
QT += widgets core testlib
CONFIG += c++17
CONFIG += testcase

HEADERS += \
    testinit.h \
    testcheckbox.h

SOURCES += \
    testmain.cpp \
    testinit.cpp \
    testcheckbox.cpp

LIBS += -l$$TARGET_NAME

