import QtQuick 2.8
import QtQuick.Controls 2.1

Page {

    id:setWindow
    title: qsTr("设置")
    visible: true

    property StackView stack: null
    height: 600

    Image {
        id: image_back
        anchors.fill: parent
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Button {
        x: 562
        y: 445

        height: 35
        width: 78
        text: "<-"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.leftMargin: 562
        anchors.left: parent.left
        onClicked: stack.pop()

    }

    Button {
        id: button_Serial
        x: 100
        y: 50
        width: 100
        height: 69
        text: qsTr("Button")
        anchors.left: parent.left
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.topMargin: 50
        onClicked: {
            page_serial.visible = true;
            page_serial.stack = stack;
            stack.push(page_serial)
        }
    }

    Button {
        id: button1
        x: 340
        y: 50
        width: 100
        height: 69
        text: qsTr("Button")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 340
    }

    Button {
        id: button2
        x: 220
        y: 50
        width: 100
        height: 69
        text: qsTr("Button")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 220
    }


}
