#include "calculate.h"
#include <QDebug>

Calculator::Calculator(QObject *parent) : QObject(parent)
{
    evaluate = new QScriptEngine();
}

Calculator::~Calculator()
{
    delete evaluate;
}

QString Calculator::cal(QString ques)
{
    auto answer = evaluate->evaluate(ques);
    return answer.toString();
}
