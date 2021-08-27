#ifndef CALCULATE_H
#define CALCULATE_H

#include <QObject>
#include <QtScript/QScriptEngine>

class Calculator : public QObject
{
    Q_OBJECT
public:
    explicit Calculator(QObject *parent = nullptr);
    ~Calculator();

    Q_INVOKABLE QString cal(QString ques);

private:
    QScriptEngine *evaluate;

signals:

};

#endif // CALCULATE_H
