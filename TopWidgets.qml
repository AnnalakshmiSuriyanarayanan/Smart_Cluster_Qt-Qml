import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5

Row {
    anchors.top: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    spacing: window.width / 29.25714285714286
    DigitalClock{}
    Alerts{}
    Notifications{}
}
