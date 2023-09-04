import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0


Rectangle
{
    anchors.verticalCenter: parent.verticalCenter
    opacity: warningSideStand_Opacity
    width: window.width/5
    height: window.height/14
    color: s_7FFF0000
    radius: window.height/14
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: warningSideStand_Text
        font.family: overpass_semibold.name
        font.bold: true
        color: s_FFFFFFFF
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: window.height*window.width / 21186.20689655172
    }
}
