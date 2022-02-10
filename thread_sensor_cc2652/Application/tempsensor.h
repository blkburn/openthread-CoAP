/******************************************************************************

 @file tempsensor.h

 @brief Temperature Sensor example application

 Group: CMCU, LPC
 Target Device: cc13x2_26x2

 ******************************************************************************
 
 Copyright (c) 2017-2021, Texas Instruments Incorporated
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:

 *  Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

 *  Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

 *  Neither the name of Texas Instruments Incorporated nor the names of
    its contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 ******************************************************************************
 
 
 *****************************************************************************/

#ifndef _TEMPSENSOR_H_
#define _TEMPSENSOR_H_

#ifdef __cplusplus
extern "C"
{
#endif

/******************************************************************************
 Constants and definitions
 *****************************************************************************/

/* Temperature sensor temperature string */
#define TEMPSENSOR_TEMP_URI     "tempsensor/temperature"
#define SENSOR_INFO_URI         "sensor/info"
#define SENSOR_STATUS_URI       "sensor/status"
#define SENSOR_SETTINGS_URI     "sensor/settings"

//#if defined(SENSOR_AHT10)
//#define THERMOSTAT_TEMP_URI     "sensor/THB37010" //"thermostat/temperature"
//#elif defined(SENSOR_REED)
//#define THERMOSTAT_TEMP_URI     "sensor/D2801" //"thermostat/temperature"
//#elif defined(SENSOR_MOVEMENT)
//#define THERMOSTAT_TEMP_URI     "sensor/M5201" //"thermostat/temperature"
//#elif defined(SENSOR_POWER)
//#define THERMOSTAT_TEMP_URI     "sensor/P8501" //"thermostat/temperature"
//#endif
#define THERMOSTAT_TEMP_URI     "api/v1/Crtu47Qz5gkfR9keqqwl/telemetry" //"thermostat/temperature"
//#define THERMOSTAT_TEMP_URI     "sensor/data" //"thermostat/temperature"

/**
 * Temperature Sensor events.
 */
typedef enum
{
    TempSensor_evtReportTemp,           /* report timeout event */
    TempSensor_evtNwkSetup,             /* openthread network is setup */
    TempSensor_evtDevRoleChanged,       /* Events for Device State */
    TempSensor_evtAddressValid,         /* Global address registered, we may begin reporting */
    TempSensor_evtKeyRight,             /* Right key is pressed */
    TempSensor_evtNwkJoined,            /* Joined the network */
    TempSensor_evtNwkJoinFailure,       /* Failed joining network */
#if TIOP_CUI
    TempSensor_evtProcessMenuUpdate,  /* CUI Menu Event is triggered */
    TempSensor_evtNwkAttach,          /* CUI Menu Attach option is selected */
    TempSensor_evtNwkJoin,            /* CUI Menu Join option is selected */
#endif /* TIOP_CUI */
} TempSensor_evt;


#define JSON_SETTINGS              \
"{"                                \
  "\"delta\": int32,"              \
  "\"interval\": int32"            \
"}"

/******************************************************************************
 External functions
 *****************************************************************************/

/**
 * @brief Posts an event to the Temperature Sensor task.
 *
 * @param event event to post.
 * @return None
 */
extern void TempSensor_postEvt(TempSensor_evt event);

#ifdef __cplusplus
}
#endif

#endif /* _TEMPSENSOR_H_ */
