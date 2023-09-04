import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5

Rectangle
{
    anchors.horizontalCenter: parent.horizontalCenter
    width: 334
    height: 55
    color: s_FF00839E

    Row
    {
        leftPadding: 15
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: heading_name
            anchors.verticalCenter: parent.verticalCenter
            text: "Service Info"
            font.family: overpass_semibold.name
            font.bold: true
            font.pixelSize: 29
            color: s_FFFFFFFF
        }

        Row
        {
            anchors.verticalCenter: parent.verticalCenter
            leftPadding: 15
            spacing: 5
            LevelIndicator{ color: s_FFFFFFFF }
            LevelIndicator{ color: s_FFFFFFFF }
            LevelIndicator{ color: s_FFFFFFFF }
            LevelIndicator{ }
        }
    }
}

