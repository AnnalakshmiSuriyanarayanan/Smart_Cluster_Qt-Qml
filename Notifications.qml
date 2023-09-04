import QtQuick 2.12
import QtQuick.Window 2.12



Row {
    anchors.verticalCenter: parent.verticalCenter
    spacing: window.width / 46.54545454545455
    PhoneCall{}
    GoProcamera{}
    PhoneMessages{}
    PhoneMissedcall{}
    PhoneConnectivity{}
    PhoneNetwork{}
    PhoneBattery{}
}
