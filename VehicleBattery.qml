import QtQuick 2.12
import QtQuick.Window 2.12

import QtQuick.Controls 2.15
import com.pets.uart 1.0

Item    {
    id: vehicle_battery
    x: window.width / 2.248780487804878
    y: 85


    Rectangle {
        id: battery_outline
        visible: true
        height: window.height / 2.654867256637168
        width: window.width / 7.585185185185185
        color: vehicle_battery_background_color // [8] Variable Color Values
        border.width: window.width / 341.3333333333333
        border.color: vehicle_battery_background_border_color // [9] Variable Color Values
        Rectangle   {
            id: top_notch
            visible: true
            height: window.height / 60
            width: window.width / 20.48
            color: battery_outline.border.color // [11] Variable Color Values
            anchors.bottom: battery_outline.top
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle {
            id: battery_anchor
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true
            height: window.height/ 2.727272727272727
            width: window.width / 8.192
            color: s_00000000
            Rectangle {
                id: battery_fill
                anchors.bottom: parent.bottom
                visible: true
                height: (window.height / 279.0697674418605) * vehicle_battery_level
                width: window.width / 8.192
                color: vehicle_battery_fill_color // [10] Variable Color Values
            }
            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                id: ongoingcall_icon
                source: vehicle_battery_icon_source
            }
        }
    }
}

