import QtQuick 2.12
import QtQuick.Window 2.12



Rectangle   {
    width: window.width/29.25714285714286
    height: window.height/17.14285714285714
    color: s_00000000
    Row {
        spacing: 3
        anchors.bottom: parent.bottom
        Rectangle
        {
            anchors.bottom: parent.bottom
            width: window.width/170.6666666666667
            height: (window.height/17.14285714285714) * 25 / 100
            color: s_FFFFFFFF
            visible: level1_enabled
        }
        Rectangle
        {
            anchors.bottom: parent.bottom
            width: window.width/170.6666666666667
            height: (window.height/17.14285714285714) * 50 / 100
            color: s_FFFFFFFF
            visible: level2_enabled
        }
        Rectangle
        {
            anchors.bottom: parent.bottom
            width: window.width/170.6666666666667
            height: (window.height/17.14285714285714) * 75 / 100
            color: s_FFFFFFFF
            visible: level3_enabled
        }
        Rectangle
        {
            anchors.bottom: parent.bottom
            width: window.width/170.6666666666667
            height: window.height/17.14285714285714
            color: s_FFFFFFFF
            visible: level4_enabled
        }

    }
}
