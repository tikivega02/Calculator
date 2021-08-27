import QtQuick 2.15
import QtQuick.Controls 2.12
import Calculate 1.0

ApplicationWindow {
    id: root
    width: 400
    height: 600
    visible: true
    title: qsTr("Calculator")

    property bool calculated: false;

    Calculate {
        id: demo
    }

    Column {
        Rectangle {
            id: rect1
            width: root.width
            height: 200
            TextEdit {
                id: answerDisplay
                width: parent.width
                horizontalAlignment: TextEdit.AlignRight
                font.pixelSize: 40
                wrapMode: TextEdit.Wrap
                cursorVisible: true
            }
        }

        Rectangle {
            width: root.width
            height: 400

            Row {
                width: root.width
                height: root.height

                Column {
                    Button {
                        text: "C"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.clear()
                    }

                    Button {
                        text: "7"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "7")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "7")
                            }
                        }
                    }

                    Button {
                        text: "4"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "4")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "4")
                            }
                        }
                    }

                    Button {
                        text: "1"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "1")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "1")
                            }
                        }
                    }

                    Button {
                        text: "%"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, "%")
                    }
                }

                Column {
                    Button {
                        text: "/"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, "/")
                    }

                    Button {
                        text: "8"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "8")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "8")
                            }
                        }
                    }

                    Button {
                        text: "5"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "5")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "5")
                            }
                        }
                    }

                    Button {
                        text: "2"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "2")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "2")
                            }
                        }
                    }

                    Button {
                        text: "0"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "0")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "0")
                            }
                        }
                    }
                }

                Column {
                    Button {
                        text: "*"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, "*")
                    }

                    Button {
                        text: "9"
                        width: 100
                        height: 80
                        font.pixelSize: 30
                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "9")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "9")
                            }
                        }
                    }

                    Button {
                        text: "6"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "6")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "6")
                            }
                        }
                    }

                    Button {
                        text: "3"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: {
                            if (calculated)
                            {
                                answerDisplay.clear()
                                answerDisplay.insert(answerDisplay.cursorPosition, "3")
                                calculated = false
                            } else {
                                answerDisplay.insert(answerDisplay.cursorPosition, "3")
                            }
                        }
                    }

                    Button {
                        text: "."
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, ".")
                    }
                }

                Column {
                    Button {
                        text: "<-"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: {
                            calculated = false;
                            answerDisplay.remove(answerDisplay.cursorPosition, answerDisplay.cursorPosition-1)
                        }
                    }

                    Button {
                        text: "-"
                        width: 100
                        height: 80
                        font.pixelSize: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, "-")
                    }

                    Button {
                        text: "+"
                        width: 100
                        height: 80
                        font.pixelSize:30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "grey"
                            opacity: 0.5
                        }

                        onClicked: answerDisplay.insert(answerDisplay.cursorPosition, "+")
                    }

                    Button {
                        text: "="
                        width: 100
                        height: 160
                        font.pixelSize: 70

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "blue"
                            opacity: 0.5
                        }

                        onClicked: {
                            answerDisplay.append(demo.cal(answerDisplay.text))
                            calculated = true
                        }
                    }
                }
            }
        }
    }
}
