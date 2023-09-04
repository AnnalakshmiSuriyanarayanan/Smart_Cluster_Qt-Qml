import QtQuick 2.12
import QtQuick.Window 2.12

import QtQuick.Controls 2.15
import com.pets.uart 1.0

Item {
    anchors.verticalCenter: parent.verticalCenter
    id: speedometer
    Column
    {
        spacing: 10
        Column {
            spacing: -20
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                id: speedvalue
                text: speedValue
                font.family: iceland_regular.name
                font.pixelSize: window.width / 4.096
                color: speedValue_color // [4] Variable Speed Value Color
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                id: unit
                text: kmph
                font.family: overpass_semibold.name
                font.bold: true
                font.pixelSize: window.width / 40.96
                color: s_FFFFFFFF
                opacity: 0.75
            }
        }

        Rectangle
        {
            anchors.horizontalCenter: parent.horizontalCenter
            id: batteryOutline
            height: window.height / 20
            width: window.width / 2.56
            color: s_00000000
            border.width: window.width / 512
            border.color: speedAnimationborder_color // [5] Variable Color Value
            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                id: batteryAncor
                visible: true
                height: window.height / 30
                width: window.width / 2.625641025641026
                color: s_FF272727
                Rectangle {
                    anchors.right: parent.right
                    id: speedLimit
                    visible: true
                    height:window.height / 30
                    width: window.width / 8.8
                    color: s_FF970000
                }
                Rectangle {
                    anchors.left: parent.left
                    id: batteryFill
                    visible: true
                    height:window.height / 30
                    width: speedvalue.text * (window.width / 525.1282051282051)
                    color: speedAnimationfill_color // [5] Variable Color Value
                }
            }
        }
    }
}
