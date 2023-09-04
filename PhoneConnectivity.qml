import QtQuick 2.12
import QtQuick.Window 2.12



Rectangle   {
    visible: true
    width: window.width/29.25714285714286
    height: window.height/17.14285714285714
    color: s_00000000
    Image
    {
        scale: ( window.width * window.height ) / ( 1024 * 600 )
        visible: true
        anchors.centerIn: parent
        source: ble_ON
    }
}
