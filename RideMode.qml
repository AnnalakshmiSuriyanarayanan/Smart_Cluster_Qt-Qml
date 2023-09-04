import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0

Rectangle
{
    anchors.top: parent.top
    visible: true
    width: window.width/4.75
    height: window.height/14
    color: rideModeBG_color // [3] Variable Color Values
    Row{
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Image {
            anchors.verticalCenter: parent.verticalCenter
            source: rideMode_Icon
        }
        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: rideMode_Text
            font.family: overpass_semibold.name
            font.bold: true
            color: s_FF121212
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: window.height*window.width / 21186.20689655172
        }
    }
}
