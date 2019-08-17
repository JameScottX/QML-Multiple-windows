import QtQuick 2.8
import QtQuick.Controls 2.1

Page {

    id: contralWindow
    title: qsTr("遥控器")
    visible: true
    property StackView stack: null


    Column {
        id: column
        anchors.fill: parent

        Image {
            id: image
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
        }

        Button {

            height: 32
            width: 120
            text: qsTr("设置")
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            onClicked: {
                page_set.visible = true;
                page_set.stack = stack;
                stack.push(page_set)
            }
        }

        Button {

            height: 32
            width: 120
            text: "<-"
            anchors.left: parent.left
            anchors.top: parent.top
            onClicked: stack.pop()

        }


    }

}
