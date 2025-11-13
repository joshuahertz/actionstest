#include "testinit.h"

#include <QtTest>

void TestInit::startup() {
    qInfo() << "Startup test";

    qInfo() << "Check the correct creation of the main window";
    QVERIFY(mpMainWindow != Q_NULLPTR);
}
