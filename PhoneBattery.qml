import QtQuick 2.12
import QtQuick.Window 2.12



Rectangle   {
    width: window.width/29.25714285714286
    height: window.height/17.14285714285714
    color: s_00000000
    Rectangle
    {
        anchors.centerIn: parent
        width: window.width/68.26666666666667
        height: window.height/17.14285714285714
        color: s_00000000
        border.color: phonebateryIconcolor
        border.width: (window.width * window.height) / (window.width * window.height)
        Rectangle
        {
            anchors.bottom: parent.bottom
            width: window.width/68.26666666666667
            height: parent.height * phonebaterylevel / 100
            color: phonebateryIconcolor // [2] Variable Color Values
        }
    }
}
