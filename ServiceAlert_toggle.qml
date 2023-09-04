import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5

Rectangle {
    id: name
    anchors.horizontalCenter: parent.horizontalCenter
    width: 334
    height: 55
    color: s_00000000
    Rectangle
    {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        width: 334
        height: 55
        color: s_7F00819B
        Menu_Option{}
        Toggle_Switch{}
    }
}
