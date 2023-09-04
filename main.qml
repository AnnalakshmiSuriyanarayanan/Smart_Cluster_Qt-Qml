import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import com.pets.uart 1.0
import QtQuick.Controls 2.5

Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("Smart Cluster")

    //-------------------------------------------------------------------------
    //----------------------- Property Color Sources-------------------
    //-------------------------------------------------------------------------
    property string s_4E9E0000: "#4E9E0000"
    property string s_FF9E0000: "#FF9E0000"
    property string s_4E00839E: "#4E00839E"
    property string s_FF00839E: "#FF00839E"
    property string s_FF00FF00: "#FF00FF00"
    property string s_FFFFA8A8: "#FFFFA8A8"
    property string s_FFFF0000: "#FFFF0000"
    property string s_FF970000: "#FF970000"
    property string s_7FFF0000: "#7FFF0000"
    property string s_FF78E8FF: "#FF78E8FF"
    property string s_FF33DCFF: "#FF33DCFF"
    property string s_7F00CBFF: "#7F00CBFF"
    property string s_FFFFFFFF: "#FFFFFFFF"
    property string s_FF000000: "#FF000000"
    property string s_FF121212: "#FF121212"
    property string s_FF00D3FF: "#FF00D3FF"
    property string s_FF004654: "#FF004654"
    property string s_0000CBFF: "#0000CBFF"
    property string s_FFA2A2A2: "#FFA2A2A2"
    property string s_00FFFFFF: "#00FFFFFF"
    property string s_00000000: "#00000000"
    property string s_FFBCF3FC: "#FFBCF3FC"
    property string s_B7000000: "#B7000000"
    property string s_7F00819B: "#7F00819B"
    property string s_FF272727: "#FF272727"
    property string s_FFE2FFE2: "#FFE2FFE2"
    property string s_FFFFE2E2: "#FFFFE2E2"
    //-------------------------------------------------------------------------

    //-------------------------------------------------------------------------
    //----------------------- Property Images Sources-------------------
    //-------------------------------------------------------------------------
    // Menu
    // Trip Settings_Icon
    property string trip_settings: "images/Trip_Settings.svg"
    property string trip_settings_focused: "images/Trip_Settings_highlighted.svg"
    // My Vehicle Settings_Icon
    property string my_vehicle: "images/My_Vehicle.svg"
    property string my_vehicle_focused: "images/My_Vehicle_Highlighted.svg"
    //Connectivity Settings_Icon
    property string connectivity: "images/Connectivity.svg"
    property string connectivity_focused: "images/Connectivity_highlighted.svg"
    // Preference Settings_Icon
    property string preference: "images/Preference.svg"
    property string preference_focused: "images/Preference_highlighted.svg"
    // Reset Trip Settings Icon
    property string reset_focused: "images/Reset.svg"
    // Service Info Settings_Icon
    property string service_info: "images/ServiceInfo.svg"
    property string service_info_focused: "images/ServiceInfo_highlighted.svg"
    // Documents Settings_Icon
    property string documents: "images/Documents.svg"
    property string documents_focused: "images/Documents_highlighted.svg"
    // Paired Device Settings_Icon
    property string paired_device: "images/PairedDevices.svg"
    property string paired_device_focused: "images/PairedDevices_highlighted.svg"
    //Bottom Widgets Settings_Icon
    property string bottom_widget: "images/BottomWidgets.svg"
    property string bottom_widget_focused: "images/BottomWidgets_highlighted.svg"
    //Smart Widgets Settings_Icon
    property string smart_widget: "images/SmartWidgets.svg"
    property string smart_widget_focused: "images/SmartWidgets_highlighted.svg"
    //Brightness Settings_Icon
    property string brightness: "images/Brightness.svg"
    property string brightness_focused: "images/Brightness_highlighted.svg"
    // Time Settings_Icon
    property string time: "images/Time.svg"
    property string time_focused: "images/Time_highlighted.svg"
    // Reset Confirmation_Actions
    property string close_action: "images/Close.svg"
    property string next_action: "images/Next.svg"
    // Odometer Settings_Icon
    property string odometer: "images/Odometer.svg"
    property string odometer_focused: "images/Odometer_highlighted.svg"
    //TPMS Settings_icon
    property string tpms: "images/TPMS.svg"
    property string tpms_focused: "images/TPMS_highlighted.svg"
    //Rest Range
    property string rest_range: "images/D2E.svg"
    property string rest_range_focused: "images/D2E_highlighted.svg"
    // Phone Call Settings_Icon
    property string phone_Call: "images/PhoneCall.svg"
    property string phone_Call_focused: "images/PhoneCall_highlighted.svg"
    //Navigation Settings_Icon
    property string navigation: "images/Navigation.svg"
    property string navigation_focused: "images/Navigation_highlighted.svg"
    // GoPro Camera Settings_Icon
    property string gopro: "images/GoPro.svg"
    property string gopro_focused: "images/GoPro_highlighted.svg"
    //Music Controls Settings_Icon
    property string music: "images/Music.svg"
    property string music_focused: "images/Music_highlighted.svg"
    //Low & High Brightness Controls Settings_Icon
    property string low_brightness: "images/Low_brightness.svg"
    property string high_brightness: "images/High_brightness.svg"
    //Set Time Settings_Icon
    property string set_time: "images/Set_time.svg"
    // View Documents Settings_Icon
    property string view_document: "images/View_Document.svg"
    property string view_document_focused: "images/View_Document_highlight.svg"
    //Delete Document Settings_Icon
    property string delete_document: "images/Delete_Document.svg"
    property string delete_document_focused: "images/Delete_Document_highlight.svg"
    //GoPro Noification_Icon
    property string gopro_notification: "images/Gopro_notify.svg"
    //Call Notification_Icon
    property string call_notification: "images/Call_notify.svg"
    //Missed Call Notification_Icon
    property string missedcall_notification: "images/MissedCall_notify.svg"
    //Inbox Notification_Icon
    property string inbox_notification: "images/Inbox_notify.svg"
    //Bluetooth Notification_Icon
    property string bluetooth_off: "images/bluetoothoff.svg"
    property string bluetooth_on: "images/bluetoothon.svg"
    //----------------------- TellTales -------------------
    // Indicators
    property string left_indicator_image: "images/Left_indicator.svg"
    property string right_indicator_image: "images/Right_indicator.svg"
    property string high_beam_Image: "images/HighBeam.svg"
    property string low_beam_Image: "images/LowBeam.svg"
    // Application Logo
    property string logo_Image: "images/Logo.svg"
    // Ridemode iconSource:
    property string ridemode_Turbo: "images/Turbo_Icon.svg"
    property string ridemode_Eco: "images/Eco_Icon.svg"
    //----------------------- Battery Icon -------------------
    property string battery_Icon_RED: "images/Icon_Red.svg"
    property string battery_Icon_GREEN: "images/Icon.svg"
    //----------------------- Top Notification Icons -------------------
    property string ble_OFF: "images/bluetoothoff.svg"
    property string ble_ON: "images/bluetoothoff.svg"
    property string missedcallImage: "images/MissedCall_notify.svg"
    property string callImage: "images/Call_notify.svg"
    property string messagesImage: "images/Inbox_notify.svg"
    property string goProCamera_Image: "images/Gopro_notify.svg"



    //-------------------------------------------------------------------------
    // ------------------------Font Loaders-------------------------
    //-------------------------------------------------------------------------
    // Iceland Regular Font
    readonly property string fontIcelandRegular: "fonts/Iceland-Regular.ttf"
    FontLoader  {   id: iceland_regular;    source: fontIcelandRegular    }

    //OverPass Semibold Fonts
    readonly property string fontOverpassSemibold: "fonts/Overpass-SemiBold.ttf"
    FontLoader  {   id: overpass_semibold;    source: fontOverpassSemibold    }

    // OverPass Semibold Italic Fonts
    readonly property string fontOverpassSemiboldItalic: "fonts/Overpass-SemiBoldItalic.ttf"
    FontLoader  {   id: overpass_semibold_italic;    source: fontOverpassSemiboldItalic    }

    // OverPass Bold Fonts
    readonly property string fontOverpassBold: "fonts/Overpass-Bold.ttf"
    FontLoader  {   id: overpass_bold;    source: fontOverpassBold    }

//    // OverPass Regular Fonts
//    readonly property string fontOverpassRegular: "fonts/Overpass-Regular.ttf"
//    FontLoader  {   id: overpass_regular;    source: fontOverpassReguar    }

    // OverPass Extra Bold Italic Fonts
    readonly property string fontOverpassExtraBoldItalic: "fonts/Overpass-ExtraBoldItalic.ttf"
    FontLoader  {   id: overpass_extra_bold_italic;    source: fontOverpassExtraBoldItalic    }
    //-------------------------------------------------------------------------


    //-------------------------------------------------------------------------
    // ----------------------- Static Texts -------------------------
    //-------------------------------------------------------------------------
    // Menu Headings
    // Level 0
    property string menuL0Heading: "Menu"
    // Level 1
    property string menuL1TripSetting: "Trip setting"
    property string menuL1MyVehicle: "My vehicle"
    property string menuL1Connectivity: "Connectivity"
    property string menuL1Preference: "Preferences"
    // Level 2
    // Trip Settings
    property string menuL2TripSetting_TripA: "Trip A"
    property string menuL2TripSetting_TripB: "Trip B"
    // Connectivity
    property string menuL2Connectivity_PairedDevice: "Paired device"
    property string menuL2Connectivity_AvailableDevice: "Available device"
    // My Vehicle
    property string menuL2MyVehicle_SericeInfo: "Service info"
    property string menuL2MyVehicle_Documents: "Documents"
    //Preference
    property string menuL2Preference_BottomWidgets: "Bottom widget"
    property string menuL2Preference_SmartWidgets: "Smartwidget"
    property string menuL2Preference_Time: "Time"
    property string menuL2Preference_Brightness: "Brightness"
    //-------------------------------------------------------------------------
    // Ride Mode Texts
    property string turbo: "TURBO"
    property string eco: "ECO"
    //-------------------------------------------------------------------------
    // Ride Mode Texts
    //-------------------------------------------------------------------------
    // ----------------------- Widget State -------------------------
    //-------------------------------------------------------------------------
    property bool digital_clock: true
    property bool service_alert:    true
    property bool ble_status:    true
    property bool notification_bar:    true
    property bool phone_battery:    true
    property bool phone_network:    true
    property bool phone_bluetooth_connected:    true
    property bool phone_inbox:    true
    property bool phone_missedcall:    true
    property bool phone_call:    true
    property bool gopro_camera:    true
    property bool bike_speed:    true
    property bool bike_battery:    true
    property bool bike_odometer:    true
    property bool bike_tpms:    true
    property bool bike_tripA:    true
    property bool bike_tripB:    true
    property bool bike_restrange:    true
    property bool bike_leftindicator:    true
    property bool bike_rightindicator:    true
    property bool bike_sidestand:    true
    property bool bike_lowBattery:    true
    property bool bike_ridemode:    true
    property bool bike_widget:    true
    property bool widget_call:    true
    property bool widget_navigation:    true
    property bool widget_music:    true
    property bool widget_gopro:    true
    property bool bike_settings:    true
    property bool settings_l1:    true
    property bool settings_l2:    true
    property bool settings_l3:    true
    property bool settings_l4:    true
    //-------------------------------------------------------------------------

    //-------------------------------------------------------------------------
    //------------------ Dynamic Widget Properties -------------------------
    //-------------------------------------------------------------------------
    // ---- [UART_TX[0] TellTaleData
    // ---- [UART_TX[0] bit 0] RideModeData
    property string rideModeBG_color: uart.connections()
    property string rideMode_Icon: uart.connections()
    property string rideMode_Text: uart.connections()
    // ---- [UART_TX[0] bit 1] WarningLowBattery
    property string warningLowbattery_Opacity: uart.connections()
    property string warningLowbattery_Text: "Low Battery"
    // ---- [UART_TX[0] bit 2] WarningSideStand
    property string warningSideStand_Opacity: uart.connections()
    property string warningSideStand_Text: "Side Stand"
    // ---- [UART_TX[0] bit 3] leftIndicator
    property string leftIndicator_Opacity: uart.connections()
    // ---- [UART_TX[0] bit 4] rightIndicator
    property string rightIndicator_Opacity: uart.connections()
    //-------------------------------------------------------------------------
    // ---- [UART_TX[1] VehicleBatteryPercentageData
    property int vehicle_battery_level: uart.connections()
    property string vehicle_battery_fill_color: uart.connections()
    property string vehicle_battery_background_color: uart.connections()
    property string vehicle_battery_background_border_color: uart.connections()
    property string vehicle_battery_icon_source: uart.connections()
    //-------------------------------------------------------------------------
    // ---- [UART_TX[2] VehicleSpeedData
    property int speedValue: uart.connections()
    property string speedValue_color: uart.connections()
    property string speedAnimationfill_color: uart.connections()
    property string speedAnimationborder_color: uart.connections()
    //-------------------------------------------------------------------------

    // ---- [UART_TX[10-11] VehicleRestRangeData

    //-------------------------------------------------------------------------
    //----------------------[UART_TX[20-25] Reserved---------------------------
    //-------------------------------------------------------------------------
    // ---- [UART_TX[26] buttonEventsData
    //-------------------------------------------------------------------------
    property var logo_Opacity: uart.connections()
    //-------------------------------------------------------------------------
    property var icon_Image: uart.connections()
    //-------------------------------------------------------------------------
    property string tripABattery: uart.connections()
    //-------------------------------------------------------------------------
    property string tripBBattery: uart.connections()
    //-------------------------------------------------------------------------
    property int odometerValue: uart.connections()
    //-------------------------------------------------------------------------
    property int frontTPMS_Value: uart.connections()
    //-------------------------------------------------------------------------
    property int rearTPMS_Value: uart.connections()
    //-------------------------------------------------------------------------
    property int tripAtimeHour: uart.connections()
    //-------------------------------------------------------------------------
    property int tripAtimeMinute: uart.connections()
    //-------------------------------------------------------------------------
    property int tripBtimeHour: uart.connections()
    //-------------------------------------------------------------------------
    property int tripBtimeMinute: uart.connections()
    //-------------------------------------------------------------------------
    property int tripA_Value: uart.connections()
    //-------------------------------------------------------------------------
    property int tripB_Value: uart.connections()
    //-------------------------------------------------------------------------
    property int button_Data: uart.connections()
    //-------------------------------------------------------------------------
    property string vehicleRestRangeData: uart.connections()
    //-------------------------------------------------------------------------

    Uart
    {
        id: uart
        // ---- [UART_TX[0] TellTaleData
        onImx_teltales: {
            // IMX_RideMode_Data
            if(imx_ridemodeData == 1) {
                rideModeBG_color = s_FFFFE2E2
                rideMode_Icon = ridemode_Turbo
                rideMode_Text = turbo
            } else {
                rideModeBG_color = s_FFE2FFE2
                rideMode_Icon = ridemode_Eco
                rideMode_Text = eco
            }
            // IMX_Warning_LowBattery_data
            if(imx_warningLowbatteryData == 1) {
                warningLowbattery_Opacity = 1
            } else {
                warningLowbattery_Opacity = 0
            }
            // IMX_Warning_SideStand_data
            if(imx_warningSidestandData == 1) {
                warningSideStand_Opacity = 1
            } else {
                warningSideStand_Opacity = 0
            }
            // IMX_leftIndicator_Data
            if(imx_leftIndicatorData == 1) {
                leftIndicator_Opacity = 1
            } else {
                leftIndicator_Opacity = 0
            }
            //IMX_rightIndicator_Data
            if(imx_rightIndicatorData == 1) {
                rightIndicator_Opacity = 1
            } else {
                rightIndicator_Opacity = 0
            }
            // IMX_high_beam_data & Lowbeam Data
            if(imx_highbeamData == 1) {
                icon_Image = high_beam_Image
            } else if(imx_lowbeamData == 1) {
                icon_Image = low_beam_Image
            } else {
                icon_Image = logo_Image
            }
            // IMX_Parking_Alerts_data
            if(parkingalertData == 1)   {
                rightIndicator_Opacity = 1
                leftIndicator_Opacity = 1
            }
        }
        // ---- [UART_TX[1] VehicleBatteryPercentageData
        onImx_battery:  {
            vehicle_battery_level = imx_batteryData;
            if(imx_batteryData <= 20)
            {
                vehicle_battery_background_color = s_4E9E0000
                vehicle_battery_background_border_color = s_FF9E0000
                vehicle_battery_fill_color = s_FFFF0000
                vehicle_battery_icon_source = battery_Icon_RED
                warningLowbattery_Opacity = 1
                gradient_Background = s_7FFF0000
            } else
            {
                vehicle_battery_background_color = s_4E00839E
                vehicle_battery_background_border_color = s_FF00839E
                vehicle_battery_fill_color = s_FF00FF00
                vehicle_battery_icon_source = battery_Icon_GREEN
                warningLowbattery_Opacity = 0
                gradient_Background = s_7F00CBFF
            }
        }
        // ---- [UART_TX[2] VehicleSpeedData
        onImx_speed:    {
            speedValue = imx_speedData;
            if(imx_speedData >= 140)
            {
                speedValue_color = s_FFFFA8A8
                speedAnimationfill_color = s_FFFF0000
                speedAnimationborder_color = s_FF970000
                gradient_Background = s_7FFF0000
            } else
            {
                speedValue_color = s_FF78E8FF
                speedAnimationfill_color = s_FF33DCFF
                speedAnimationborder_color = s_FF00839E
                gradient_Background = s_7F00CBFF
            }
        }
        // ---- [UART_TX[3] TripABatteryPercentageData
        onImx_tripAbattery:     {
            tripABattery = imx_tripAbatterydata
        }
        // ---- [UART_TX[4] TripABatteryPercentageData
        onImx_tripBbattery:     {
            tripBBattery = imx_tripBbatterydata
        }
        // ---- [UART_TX[5-7] VehicleOdometerData
        onImx_odo:     {
            odometerValue = imx_odoData
        }
        onImx_frontTPMS:    {
            frontTPMS_Value = imx_frontTPMSData
        }
        onImx_rearTPMS:    {
            rearTPMS_Value = imx_rearTPMSData
        }
        onImx_restRange:    {
            vehicleRestRangeData = imx_restRangeData
        }

        onImx_tripAtime_hour:   {
            tripAtimeHour = imx_tripAtimedata_hr
        }
        onImx_tripAtime_min: {
            tripAtimeMinute = imx_tripAtimedata_min
        }
        onImx_tripBtime_hour:   {
            tripBtimeHour = imx_tripBtimedata_hr
        }
        onImx_tripBtime_min: {
            tripBtimeMinute = imx_tripBtimedata_min
        }
        onImx_tripA:    {
            tripA_Value = imx_tripAdata
        }
        onImx_tripB:    {
            tripB_Value = imx_tripBdata
        }
        onImx_btnEvnt:  {
            button_Data = imx_BtnEvntData
        }

        // ---- [UART_TX[26] VehicleOdometerData
        //**********************************************************
    }

    // ------------------------------------------------------------------------
    // Main Background
    property string gradient_Background: uart.connections()
    property string kmph: "KMPM"
    property string km: "KM"
    property string f: "F"
    property string r: "R"

    // Digital Clock
    property int hours: 11
    property int minutes: 59
    property string am: "AM"
    property string pm: "PM"

    //Top Connectivity Alerts
    property int serviceduedate: 100
    property string device_name: "SCPETS_00XX"
    property string service_alerttext: "Service Due in " + serviceduedate + " days !"
    property string ble_sucessconnection: "Connected to " + device_name + "!"
    property string ble_failedConnection: "Connection failed with" + device_name + " !"

    //Phone Battery
    property int phonebaterylevel: 80
    property string phonebateryIconcolor: s_FFFFFFFF

    //Toggle Buttons
    property bool toggle_value: true
    property string toggler_color: s_FF00D3FF
    property string toggler_bg_color: s_FF004654
    property double togler_xPos:  window.width / 46.54545454545455

    //Phone Network
    property bool phonenetwork_enabled: true

    property int phonesignalstrength: 100

    property bool level4_enabled: true
    property bool level3_enabled: true
    property bool level2_enabled: true
    property bool level1_enabled: true

    /////////////////////////////////////////////////////////////////

    //widgets active state

    // Odo Meter {ODO}

    // Distance to Empty {D 2 E}
    property int distance2emptyValue: 100

    // Front Tyre Pressure
    property int tpmsFValue: 40

    // Rear Tyre Pressure
    property int tpmsRValue: 5

    Background{}
    TopWidgets{}
    Logo{}
    Rectangle
    {
        y: 120
        width: 200
        height: 55
        color: s_FF00839E
        anchors.left: parent.left
        Text {
            id: heading_name
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Menu"
            font.family: overpass_semibold.name
            font.bold: true
            font.pixelSize: 29
            color: s_FFFFFFFF
        }
    }
    BottomWidget{}
    MiddleWidget{}
    //    PopUps{}
}
