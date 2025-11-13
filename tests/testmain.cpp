#include "testinit.h"
#include "testcheckbox.h"

#include <QApplication>
#include <QtTest>

int main(int argc, char** argv)
{
    QApplication app(argc, argv);

   int status = 0;
   {
      TestInit tc;
      status |= QTest::qExec(&tc, argc, argv);
   }
   {
      TestCheckbox tc;
      status |= QTest::qExec(&tc, argc, argv);
   }

   return status;
}
