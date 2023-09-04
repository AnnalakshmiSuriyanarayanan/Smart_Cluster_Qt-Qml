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
            // text: toLevel(mainModel.warningLevel)
	    text: "Warnings"
            font.family: overpass_semibold.name
            font.bold: true
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
	    source: ""
        }
    }
    /*
    Timer {

        id: warningTimer
        interval: 2000 // 2000 milliseconds (2 seconds)
        running: true
        repeat: true
        onTriggered: {
            // Simulate changing the warning level randomly
            var randomWarning = Math.floor(Math.random() * 21); // Random between 0 and 3
            mainModel.warningLevel = randomWarning;
        }
    }
    */
    Uart
    {
    id: uart
     onImx_teltales: 	{
     	imxWarnings = imx_teletaleData
     	}
     }
    function toLevel(imxWarnings) {
        switch (imxWarnings) {
        case Uart.BootOpen:
            return "BootOpen"
        case Uart.BonnetOpen:
            return "BonnetOpen"
        case Uart.FogLightFrontON:
            return "FogLightFront
ON"
        case Uart.PowerSteeringFailure:
            return "PowerSteering
Failure"
        case Uart.BrakePadFailure:
            return " BrakePad
 Failure"
        case Uart.CruiseControlON:
            return "Cruise
ControlON"
        case Uart.KeyNotinVehicle:
            return "KeyNot
inVehicle"
        case Uart.HighBeamON:
            return "HighBeamON"
        case Uart.TyrePressureLowFrontLeft:
            return "TyrePressure
LowFrontLeft"
        case Uart.TyrePressureLowFrontRight:
            return "TyrePressure
LowFrontRight"
        case Uart.TyrePressureLowRearLeft:
            return "TyrePressure
LowRearLeft"
        case Uart.TyrePressureLowRearRight:
            return "TyrePressure
LowRearRight"
        case Uart.ExteriorLightFault:
            return "Exterior
LightFault"
        case Uart.WearSeatBeltDriver:
            return "WearSeat
BeltDriver"
        case Uart.WearSeatBeltPassenger:
            return "WearSeat
BeltPassenger"
        case Uart.ServiceDue:
            return "ServiceDue"
        case Uart.AirbagFailure:
            return "   Airbag
  Failure"
        case Uart.DoorOpenDriver:
            return "Door
OpenDriver"
        case Uart.DoorOpenPassenger:
            return "DoorOpen
Passenger"
        case Uart.DoorOpenRearLeft:
            return "DoorOpen
RearLeft"
        case Uart.DoorOpenRearRight:
            return "DoorOpen
RearRight"

        default:
            return Uart.NoWarnings
        }
    }
}
