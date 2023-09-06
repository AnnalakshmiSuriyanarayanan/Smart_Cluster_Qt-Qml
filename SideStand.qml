import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0
//import com.MyQMLEnums.uart 1.0


Item{
    // property MainModel mainModel: MainModel{}
    property int imxWarnings: uart.connections()

    Rectangle
    {
        // opacity: warningSideStand_Opacity
        width: window.width/5
        height: window.height/14
        color: "transparent"
        radius: window.height/14

        Text {
            id: warningsText
            x: 40
            y:50
            text: warningQMLText
            font.family: overpass_semibold.name
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            color: s_FFFFFFFF
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: window.height*window.width / 21186.20689655172
        }

    }
    Rectangle
    {
        id: warningImage
        // opacity: warningSideStand_Opacity
        width: window.width/5
        height: window.height/14
        color: "transparent"
        radius: window.height/14

        Image{
            id:ima
            x: 52
            y:-40
            // source:  warning_0
        source: "images/IMX_Warnings_" + warningQMLList + ".png"
        }
    }



    function toLevel(imxWarnings) {

    }
}
