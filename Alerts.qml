import QtQuick 2.12
import QtQuick.Window 2.12



Rectangle   {
    anchors.top: parent.top
    width: window.width/2.438095238095238
    height: window.height/9.230769230769231
    color: s_FF00839E
    Text {
        id: odometer_value
        anchors.left: parent.left
        leftPadding: window.width / 102.4
        anchors.verticalCenter: parent.verticalCenter
        text: ble_sucessconnection
        font.family: overpass_semibold.name
        font.bold: true
        horizontalAlignment: Text.AlignRight
        color: s_FFFFFFFF
        font.pixelSize: window.height*window.width / 21186.20689655172
    }
}
