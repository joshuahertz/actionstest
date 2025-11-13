#ifndef TESTCHECKBOX_H
#define TESTCHECKBOX_H

#include "mainwindow.h"

#include <QObject>
#include <QEventLoop>
#include <QTimer>
#include <QDebug>

class TestCheckbox: public QObject
{
    Q_OBJECT

private:

    MainWindow * mpMainWindow;

    void delay(const int msecs) {
        QEventLoop vLoop;
        QTimer::singleShot(msecs, &vLoop, SLOT(quit()));
        vLoop.exec();
    }

private slots:
    void init() {
        qInfo() << "---    Initialization     ---";

        /* Put your initialization stuff here */

        mpMainWindow = new MainWindow();
        mpMainWindow->show();

        delay(100);

        qInfo() << "--- End of initialization ---";
    }

    void cleanup() {
        qInfo() << "---     Cleanup    ---";

        /* Put your cleanup stuff here */

        delete mpMainWindow;

        qInfo() << "--- End of cleanup ---";
    }

    /* Define your test methods here */
    void checkboxHuman();
    void checkboxRobot();
};

#endif // TESTCHECKBOX_H
