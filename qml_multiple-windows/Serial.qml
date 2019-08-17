import QtQuick 2.8
import QtQuick.Controls 2.1

Page {
    id:serialWindow
    property StackView stack: null



    Column {
        id: column
        anchors.fill: parent
        Image {

            id: image_back
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
        }

        ComboBox {
            id: comboBox
            x: 118
            y: 32
            width: 258
            height: 39
            currentIndex: -1
            textRole: ""
        }


        Button {

            height: 41
            width: 96
            text: "<-"
            font.capitalization: Font.AllUppercase
            font.weight: Font.Medium
            font.pointSize: 20
            font.underline: false
            font.bold: true
            anchors.leftMargin: -96
            anchors.topMargin: -41
            anchors.left: parent.right
            anchors.top: parent.bottom
            onClicked: stack.pop()

        }

        ComboBox {
            id: comboBox3
            x: 119
            y: 174
            width: 257
            height: 40
        }

        ComboBox {
            id: comboBox2
            x: 119
            y: 122
            width: 257
            height: 40
        }

        ComboBox {
            id: comboBox1
            x: 119
            y: 77
            width: 257
            height: 39
        }

        Text {
            id: text1
            x: 25
            y: 284
            width: 351
            height: 136
            font.pixelSize: 18
        }

        Text {
            id: text2
            x: 25
            y: 32
            width: 79
            height: 39
            text: qsTr("端口")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 20
        }

        Text {
            id: text3
            x: 25
            y: 77
            width: 79
            height: 39
            text: qsTr("波特率")
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Text {
            id: text4
            x: 25
            y: 122
            width: 79
            height: 39
            text: qsTr("数据位")
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        Text {
            id: text5
            x: 25
            y: 175
            width: 79
            height: 39
            text: qsTr("停止位")
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        ComboBox {
            id: comboBox4
            x: 119
            y: 220
            width: 257
            height: 40
        }

        Text {
            id: text6
            x: 25
            y: 221
            width: 79
            height: 39
            text: qsTr("硬件流")
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }

        RoundButton {
            id: roundButton
            text: "+"
            anchors.top: parent.top
            anchors.topMargin: 222
            anchors.left: parent.left
            anchors.leftMargin: 450
            clip: false
        }
    }

}
