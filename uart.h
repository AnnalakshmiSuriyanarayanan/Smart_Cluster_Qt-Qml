#ifndef UART_H
#define UART_H

#include "qserialport.h"
#include "qtimer.h"
#include <QMainWindow>
#include <QObject>
#include <QQuickItem>
#include <QSharedDataPointer>
#include <QWidget>

#include <QSerialPort>
#include <QSerialPortInfo>
#include <cstdint>

#include <QTimer>

class UART : public QObject
{
    Q_OBJECT
public:

enum Waring_Signs : quint8 {
        NoWarnings = 0,
        BootOpen,
        BonnetOpen,
        FogLightFrontON,
        PowerSteeringFailure,
        BrakePadFailure,
        CruiseControlON,
        KeyNotinVehicle,
        HighBeamON,
        TyrePressureLowFrontLeft,
        TyrePressureLowFrontRight,
        TyrePressureLowRearLeft,
        TyrePressureLowRearRight,
        ExteriorLightFault,
        WearSeatBeltDriver,
        WearSeatBeltPassenger,
        ServiceDue,
        AirBagFailure,
        DoorOpenDriver,
        DoorOpenPassenger,
        DoorOpenRearLeft,
        DoorOpenRearRight,
    };
	
    Q_ENUM(Waring_Signs)
	
	static void  declareQML()	{
        qmlRegisterType<UART>("com.MyQMLEnums.uart", 1, 0, "Warnings");
	}

    explicit UART(QObject *parent = nullptr);
    QSerialPort *getImx_serial() const;
    void setImx_serial(QSerialPort *newImx_serial);

    // ---- [UART_TX[0] TellTaleData
    quint8 getImx_teltaleData() const;
    void setImx_teltaleData(quint8 newImx_teltaleData);

    // ---- [UART_TX[1] VehicleBatteryPercentageData
    quint8 getImx_batteryData() const;
    void setImx_batteryData(quint8 newImx_batteryData);

    // ---- [UART_TX[2] VehicleSpeedData
    quint8 getImx_speedData() const;
    void setImx_speedData(quint8 newImx_speedData);

    // ---- [UART_TX[3] TripABatteryPercentageData
    quint8 getImx_tripAbatterydata() const;
    void setImx_tripAbatterydata(quint8 newImx_tripbatterydata);

    // ---- [UART_TX[4] TripABatteryPercentageData
    quint8 getImx_tripBbatterydata() const;
    void setImx_tripBbatterydata(quint8 newImx_tripBbatterydata);

    // ---- [UART_TX[5-7] VehicleOdometerData
    quint32 getImx_odoData() const;
    void setImx_odoData(quint32 newImx_odoData);

    // ---- [UART_TX[8] FrontTyrePressureData
    quint8 getImx_frontTPMSData() const;
    void setImx_frontTPMSData(quint8 newImx_frontTPMSData);

    // ---- [UART_TX[9] RearTyrePressureData
    quint8 getImx_rearTPMSData() const;
    void setImx_rearTPMSData(quint8 newImx_rearTPMSData);

    // ---- [UART_TX[10-11] RestRangeData
    quint16 getImx_restRangeData() const;
    void setImx_restRangeData(quint16 newImx_rearRangeData);

    // ---- [UART_TX[12] TripATimeDataHrData
    quint8 getImx_tripAtimedata_hr() const;
    void setImx_tripAtimedata_hr(quint8 newImx_tripAtimedata_hr);

    // ---- [UART_TX[13] TripATimeDataMinData
    quint8 getImx_tripAtimedata_min() const;
    void setImx_tripAtimedata_min(quint8 newImx_tripAtimedata_min);

    // ---- [UART_TX[14] TripBTimeDataHrData
    quint8 getImx_tripBtimedata_hr() const;
    void setImx_tripBtimedata_hr(quint8 newImx_tripBtimedata_hr);

    // ---- [UART_TX[15] TripBTimeDataMinData
    quint8 getImx_tripBtimedata_min() const;
    void setImx_tripBtimedata_min(quint8 newImx_tripBtimedata_min);

    // ---- [UART_TX[16-17] TripAData
    quint16 getImx_tripAdata() const;
    void setImx_tripAdata(quint16 newImx_tripAdata);

    // ---- [UART_TX[18-19] TripBData
    quint16 getImx_tripBdata() const;
    void setImx_tripBdata(quint16 newImx_tripBdata);

    // ---- [UART_TX[26] ButtonEvents
    quint8 getImx_BtnEvndatat() const;
    void setImx_BtnEvntdata(quint8 newImx_BtnEvntdata);

public slots:
    void connections();

private slots:
    void readData();


signals:
    // ---- [UART_TX[0] TellTaleData
    void imx_teltales(quint8 imx_teltaleData);
    // ---- [UART_TX[1] VehicleBatteryPercentageData
    void imx_speed(quint8 imx_speedData);
    // ---- [UART_TX[2] VehicleSpeedData
    void imx_battery(quint8 imx_batteryData);
    // ---- [UART_TX[3] TripABatteryPercentageData
    void imx_tripAbattery(quint8 imx_tripAbatterydata);
    // ---- [UART_TX[4] TripBBatteryPercentageData
    void imx_tripBbattery(quint8 imx_tripBbatterydata);
    // ---- [UART_TX[5-7] VehicleOdometerData
    void imx_odo(quint32 imx_odoData);
    // ---- [UART_TX[8] VehicleFrontTyrePressureData
    void imx_frontTPMS(quint8 imx_frontTPMSData);
    // ---- [UART_TX[9] VehicleRearTyrePressureData
    void imx_rearTPMS(quint8 imx_rearTPMSData);
    // ---- [UART_TX[10-11] VehicleRearTyrePressureData
    void imx_restRange(quint8 imx_restRangeData);
    // ---- [UART_TX[12] TripATimeDataHrData
    void imx_tripAtime_hour(quint8 imx_tripAtimedata_hr);
    // ---- [UART_TX[13] TripATimeDataMinData
    void imx_tripAtime_min(quint8 imx_tripAtimedata_min);
    // ---- [UART_TX[14] TripBTimeDataHrData
    void imx_tripBtime_hour(quint8 imx_tripBtimedata_hr);
    // ---- [UART_TX[15] TripATimeDataMinData
    void imx_tripBtime_min(quint8 imx_tripBtimedata_min);
    // ---- [UART_TX[16-17] TripAData
    void imx_tripA(quint16 imx_tripAdata);
    // ---- [UART_TX[18-19] TripAData
    void imx_tripB(quint16 imx_tripBdata);
    // ---- [UART_TX[26] ButtonEventData
    void imx_btnEvnt(quint8 imx_BtnEvntData);

    // ---- [UART_TX[0] Warnings
    void imx_warnings(quint8 imx_warningsData);

private:

    QSerialPort *imx_serial = nullptr;
    QTimer *imx_timer = nullptr;

    QTimer *digital_clock = nullptr;

    QString  code = "!";
    int codeSize = sizeof(code);

    quint8 imx_bufferSize = 15;
    qint64 availableData;
    QByteArray imx_buffer;
    int imx_dataIndex = 0;

    quint8 imx_fuelData = 100;

    bool imx_sidestandData;
    bool imx_lowBatteryData  = 1;

    // Top Notifications
    quint8 imx_phonebatteryData = 100;
    quint8 imx_phonenetworkData = 100;
    bool imx_phonebluetoothData = true;
    bool imx_phonemessageData = true;
    bool imx_phonemissedcallData = true;
    bool imx_phoneongoingcallData = true;
    bool imx_goproData = true;

    quint8 imx_tripAdistanceData = 0;
    quint8 imx_tripBdistanceData = 0;
    quint8 imx_odometerdistanceData = 0;
    quint8 imx_distance2emptyData = 0;
    quint8 imx_frontpsiData = 0;
    quint8 imx_rearpsiData = 0;

    bool imx_tripAenabled = true;
    bool imx_tripBenabled = false;
    bool imx_odometerenabled = true;
    bool imx_distance2emptyenabled = true;
    bool imx_psienabled = true;
    bool imx_toggleData = true;

    QByteArray buffer;
};

#endif // UART_H
