import QtQuick 2.8
import QtQuick.Controls 2.1

Page {

    id: messgaeWindow
    title: qsTr("通讯调试")
    visible: true

    property StackView stack: null

    Column {
        id: column
        anchors.fill: parent
        Image {
            id: image_back
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
        }

        Button {

            height: 32
            width: 120
            text: "<-"
            anchors.left: parent.left
            anchors.top: parent.top
            onClicked: stack.pop()

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


    }

}


