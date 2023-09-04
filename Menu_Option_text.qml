import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import com.pets.uart 1.0
import QtQuick.Controls 2.5

Text {
    anchors.verticalCenter: parent.verticalCenter
    id: service_alert_text
    text: "Phone call"
    font.family: overpass_semibold_italic.name
    font.italic: true
    font.bold: true
    font.pixelSize: 25
    color: s_FF004654
}
