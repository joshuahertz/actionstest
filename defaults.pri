INCLUDEPATH += $$PWD/src
SRC_DIR = $$PWD

LOCAL_RES = "$$PWD/res"
TARGET_NAME = "qt-qmake-example-project"

CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/build/debug
}
CONFIG(release, debug|release) {
    DESTDIR = $$PWD/build/release
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

LIBS += -L$$DESTDIR
