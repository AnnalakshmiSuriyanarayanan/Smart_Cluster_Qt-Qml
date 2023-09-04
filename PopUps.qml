import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import com.pets.uart 1.0
import QtQuick.Controls 2.5

Rectangle   {
    visible: true
    anchors.centerIn: parent
    width: window.width
    height: window.height
    radius: 10
    color: s_B7000000
    Rectangle   {
        id: popup_window
        anchors.centerIn: parent
        width: window.width / 3
        height: window.height / 3
        radius: 10
        color: s_FF970000
        clip: true
        Rectangle   {
            id: captions
            anchors.top: parent.top
            width: window.width / 3
            height: window.height / 10
            radius: 10
            color: s_FF004654
            Text {
                anchors.centerIn: parent
                topPadding: -05
                text: qsTr("Pop_UP Window")
                font.pixelSize: 28
                color: s_FFFFFFFF
            }
        }
    }
}
