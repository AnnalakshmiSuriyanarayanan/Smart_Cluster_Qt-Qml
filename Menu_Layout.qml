import QtQuick.Window 2.12


import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5

Rectangle
{
    anchors.horizontalCenter: parent.horizontalCenter
    height: 285
    width: 334
    gradient: Gradient  {
        GradientStop    {   position: 0.0; color: s_FFBCF3FC   }
        GradientStop    {   position: 1.0; color: s_FFFFFFFF   }
    }
    Column{
        anchors.bottom: parent.bottom
        spacing: 2
        ServiceAlert_toggle{}
        ServiceAlert_toggle{}
        ServiceAlert_toggle{}
        ServiceAlert_toggle{}
        ServiceAlert_toggle{}
    }
}
