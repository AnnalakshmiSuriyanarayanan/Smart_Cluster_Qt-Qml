import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5



Row
{
    anchors.verticalCenter: parent.verticalCenter
    topPadding: window.height / 130
    spacing: window.width / 40
    Column  {
        anchors.verticalCenter: parent.verticalCenter
        Heading{  opacity: 0 }
        Menu_Layout{ opacity: 0 }
    }
    Column
    {
        spacing: window.width / 40
        Row {
            spacing: window.width / 40
            RideMode{opacity: 0}
        }
        Row {
            anchors.verticalCenter: parent.verticalCenter
            topPadding: 50
            spacing: window.width / 40
            Speedometer{ x: -250 }
            Warnings{opacity:1}
            VehicleBattery{}
        }
    }
}
