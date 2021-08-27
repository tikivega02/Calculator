#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtScript/QScriptEngine>
#include <QtQuick>
#include <calculate.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QIcon icon("calculator.png");
//    app.setWindowIcon(icon);

    qmlRegisterType<Calculator>("Calculate", 1, 0, "Calculate");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/ui/main.qml")));

    return app.exec();
}
