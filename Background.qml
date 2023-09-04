import QtQuick 2.12
import QtQuick.Window 2.12


import com.pets.uart 1.0

Rectangle   {


    anchors.centerIn: parent
    id: background
    width: window.width
    height: window.height
    color: s_FF000000
    Rectangle   {
        id: background_gradient
        anchors.top: parent.top
        width: parent.width
        height: parent.height/2
        gradient: Gradient
        {
            GradientStop
            {
                id: gradientstop_1
                position: 0.0
                color: s_FF000000 // [1] Variable Color Value
            }
            GradientStop
            {
                id: gradientstop_2
                position: 1.0
                color: s_FF000000
            }
        }
    }
}
