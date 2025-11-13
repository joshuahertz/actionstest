#include "testcheckbox.h"

#include <QtTest>
#include <QCheckBox>

void TestCheckbox::checkboxHuman() {
    qInfo() << "Human checkbox verification";

    qInfo() << "Verify than the human choise is disabled";
    QCOMPARE(mpMainWindow->findChild<QCheckBox*>("checkBox_human")->isChecked(), false);
}

void TestCheckbox::checkboxRobot() {
    qInfo() << "Robot checkbox verification";

    qInfo() << "Verify than the robot choise is enabled";
    QCOMPARE(mpMainWindow->findChild<QCheckBox*>("checkBox_robot")->isChecked(), true);
}
