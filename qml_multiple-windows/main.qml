import QtQuick 2.2
import QtQuick.Controls 2.1

ApplicationWindow {

    visible: true
    width: 640
    height: 600
    title: qsTr("万能调试小助手")
    property int i :0

    StackView {
        id: stack
        initialItem: mainView
        anchors.fill: parent
    }
    Page {
        id: mainView
        Image {
            id: image_main
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
        }
        Text {
            id: text1
            x: 9
            y: 549
            width: 251
            height: 33
            text: qsTr("万能调试助手，版本1.0")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 18
            font.bold: false
            font.pixelSize: 18
        }
        Button {

            id: button
            x: 235
            y: 360
            width: 170
            text: qsTr("遥控器")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {

                page_Contral.visible =true;
                page_Contral.stack = stack;
                stack.push(page_Contral)
            }
        }
        Button {
            x: 519
            y: 429
            height: 51
            width: 121
            text: qsTr("设置")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onClicked: {
                page_set.visible = true;
                page_set.stack = stack;
                stack.push(page_set)
            }
        }
        Column {
            id: column
            anchors.fill: parent
        }
        Button {
            id: button1
            x: 235
            y: 217
            width: 170
            text: qsTr("通讯调试")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 2
            onClicked: {

                page_messgae.visible =true;
                page_messgae.stack = stack;
                stack.push(page_messgae)

            }
        }
    }
    Message{
        id:page_messgae
        visible: false
    }
    Set{
        id:page_set
        visible: false
    }

    Contral{
        id:page_Contral
        visible: false
    }
    Serial{
        id:page_serial
        visible: false
    }
}
