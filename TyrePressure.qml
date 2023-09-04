import QtQuick 2.12
import QtQuick.Window 2.12



BottomWidgetBG  {
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: window.width / 120
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: tpms
            text: "T P M S"
            font.family: overpass_semibold.name
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            color: s_FFA2A2A2
            font.pixelSize: window.height*window.width / 25600
        }
        Row
        {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: window.width / 51.2
            Row {
                anchors.verticalCenter: parent.verticalCenter
                spacing: window.width / 204.8
                Text {
                    id: tpmsF_unit
                    anchors.verticalCenter: parent.verticalCenter
                    text: f
                    font.family: overpass_semibold.name
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    color: s_FF00D3FF
                    font.pixelSize: window.height*window.width / 25600
                }
                Text {
                    id: tpmsF_Value
                    anchors.verticalCenter: parent.verticalCenter
                    text: tpmsFValue
                    font.family: overpass_semibold.name
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    color: s_FFFFFFFF
                    font.pixelSize: window.height*window.width / 14628.57142857143
                }
            }
            Row {
                anchors.verticalCenter: parent.verticalCenter
                spacing: window.width / 204.8
                Text {
                    id: tpmsR_unit
                    anchors.verticalCenter: parent.verticalCenter
                    text: r
                    font.family: overpass_semibold.name
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    color: s_FF00D3FF
                    font.pixelSize: window.height*window.width / 25600
                }
                Text {
                    id: tpmsR_value
                    anchors.verticalCenter: parent.verticalCenter
                    text: tpmsRValue
                    font.family: overpass_semibold.name
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    color: s_FFFFFFFF
                    font.pixelSize: window.height*window.width / 14628.57142857143
                }
            }
        }
    }
}
