import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0

Rectangle
{
    x : parent.width - ( width + 10 )
    anchors.verticalCenter: parent.verticalCenter
    height: window.height / 30
    width: window.width / 19.69230769230769
    color: toggler_bg_color // [6] Variable Color Values
    radius: width
    Rectangle
    {
        x: togler_xPos
        anchors.verticalCenter: parent.verticalCenter
        height: window.height / 20
        width: window.width / 34.13333333333333
        color: toggler_color // [7] Variable Color Values
        radius: window.height / 20
    }
}
