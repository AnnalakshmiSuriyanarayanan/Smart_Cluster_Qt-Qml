import QtQuick 2.12
import QtQuick.Window 2.12



BottomWidgetBG  {
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: window.width / 120
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: tripB
            text: "TRIP B"
            font.family: overpass_semibold.name
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            color: s_FFA2A2A2
            font.pixelSize: window.height*window.width / 25600
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: window.width / 204.8
            Text {
                id: tripB_value
                anchors.verticalCenter: parent.verticalCenter
                text: tripB_Value
                font.family: overpass_semibold.name
                font.bold: true
                horizontalAlignment: Text.AlignRight
                color: s_FFFFFFFF
                font.pixelSize: window.height*window.width / 14628.57142857143
            }
            Text {
                id: tripB_unit
                anchors.verticalCenter: parent.verticalCenter
                text: km
                font.family: overpass_semibold.name
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                color: s_FF00D3FF
                font.pixelSize: window.height*window.width /29257.14285714286
            }
        }
    }
}
