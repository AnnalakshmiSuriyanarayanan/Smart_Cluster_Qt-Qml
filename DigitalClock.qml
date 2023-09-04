import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5

Row{
    anchors.verticalCenter: parent.verticalCenter
    spacing: window.width / 204.8
    Text {
        anchors.verticalCenter: parent.verticalCenter
        text: hours + ":" + minutes
        font.family: overpass_semibold.name
        font.bold: true
        horizontalAlignment: Text.AlignRight
        color: s_FFFFFFFF
        font.pixelSize: window.height*window.width / 21186.20689655172
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        text: am
        font.family: overpass_semibold.name
        font.bold: true
        horizontalAlignment: Text.AlignRight
        color: s_FF00D3FF
        font.pixelSize: window.height*window.width /29257.14285714286
    }
}


