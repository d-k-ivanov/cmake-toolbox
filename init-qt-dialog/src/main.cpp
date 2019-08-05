// STL
#include <iostream>
#include <string>

#ifdef _WIN32
#include <windows.h>
#endif

// QT
#include <QApplication>

#include "main_window.h"

int main(int argc, char* argv[])
{
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);
    MainWindow mainWindow;
    mainWindow.show();
    return app.exec();
}
