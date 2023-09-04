import QtQuick 2.12
import QtQuick.Window 2.12



Row
{
    anchors.top: parent.top
    spacing: window.width/100
    SideStand{x: 210;y: 160}
    LowBattery{visible: false}
}
