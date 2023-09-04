import QtQuick 2.12
import QtQuick.Window 2.12



Row    {
    id: bottomwidgets
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    spacing: window.width/85.33333333333333
    Leftindicator   {
        visible: true
    }
    Odometer{
        visible: true
    }
    TripMeterA{
        visible: true
    }
    TripMeterB{
        visible: false
    }
    Distance2Empty{
        visible: true
    }
    TyrePressure{
        visible: false
    }
    RightIndicaror   {
        visible: true
    }
}
