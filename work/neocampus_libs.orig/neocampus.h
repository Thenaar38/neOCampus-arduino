/*
 * neOCampus operation
 * 
 * neOCampus *all-in-one* base definitions
 * 
 * F.Thiebolt   Nov.19  add MQTT socket timeout definition
 *                      add WIFI_AP_MODE_CREDENTIALS
 * F.Thiebolt   Jun.18  start to merge boards types
 *                      manage sensocampus sandbox through wifi parameters options
 * Thiebolt F. July 17  initial release
 * 
 */


#ifndef _NEOCAMPUS_H_
#define _NEOCAMPUS_H_

/*
 * Includes
 */

#include <Arduino.h>

#include "log_levels.h"


/*
 * Generic types definitions
 */
typedef void (*voidFuncPtr)(void);
typedef uint32_t firmwareRev_t;


/*
 * Simultaneous TCP connexions
 */
#ifndef MAX_TCP_CONNECTIONS
#define MAX_TCP_CONNECTIONS              8       // maximum number of simultaneous TCP connexions (5 as default)
#endif



/*
 * >>>                 <<<
 * >>> BOARD SELECTION <<<
 * >>>                 <<<
 * 
 * Select proper board definition to include
 * - neOSensor.h          all ESP8266 based hardware :)
 */
#include "neOSensor.h"



/*
 * LOGS definitions
 */
// set neOCampus logging level (min. is 1)
#ifndef LOG_LEVEL
#define LOG_LEVEL               LOG_LVL_DEBUG
#endif /* LOG_LEVEL */

/* I2C low-level msg debug
 * WARNING: display a lot of information about I2C messages! */
//#define DEBUG_I2C

// WiFi Manager debug mode on/off (default is on)
#define DEBUG_WIFI_MANAGER

/* MQTT low-level msg debug
 * WARNING: display a lot of information about MQTT messages! */
#define MQTT_LOWLEVEL_DEBUG




/*
 * SensOCampus
 */
/*
 * WARNING: TESTING PURPOSES ONLY
 * Activating definition below means that sensOCampus 
 * won't get contacted thus using defaults (i.e neOCampus sandbox)
 *
 * [Jun.18] removed in favour of customizable WiFiManager option :)
 * 
 * #define DISABLE_SENSOCAMPUS             // comment out to activate sensOCampus (normal mode)
 *
 */
// sensOCampus credentials & config related definitions
#define MQTT_SERVER_NAME_LENGTH         64    // max length of MQTT server name
#define MQTT_BASE_TOPIC_LENGTH          64    // max length of MQTT base topic (i.e building/room)
#define SENSO_MQTT_LOGIN_LENGTH         32    // max length of sensOCampus MQTT login
#define SENSO_MQTT_PASSWD_LENGTH        64    // max length of sensOCampus MQTT password

// defaults values for testing purposes
#define DEFL_MQTT_SERVER                "neocampus.univ-tlse3.fr"
#define DEFL_MQTT_STD_PORT              1883
#define DEFL_MQTT_ABROAD_PORT           10883           // for abroad access
#define DEFL_MQTT_LOGIN                 "test"          // for SANDBOX mode
#define DEFL_MQTT_PASSWD                "test"          // for SANDBOX mode
#define DEFL_MQTT_TOPIC                 "TestTopic"     // for SANDBOX mode


/*
 * PubSub MQTT client (re)definitions
 * Note: this file OUGHT to get included within PubSubClient.h
 */
#define MQTT_KEEPALIVE          60
#define MQTT_SOCKET_TIMEOUT     60
#define MQTT_MAX_PACKET_SIZE    256


/*
 * WiFi (and loosely related to) definitions
 */
// type for mac address in raw format
typedef uint8_t mac_addr_t[6];

/* --- SPIFFS WiFi related definitions
 * Note: remember there's no directory support @ SPIFFS level!
 */
#define WIFI_CONFIG_FILE        "/wifi.json"        // (optional) WiFi configuration file for large-scale deployment in well-known env

/*
typedef struct { 
    uint8_t bytes[6]; 
} mac_addr_t;
*/

// type for mac address in string format
typedef char mac_str_t[18];

/* WiFi AP mode credentials:
 *   Password required to get connected to the WiFi settings mode.
 */
#define WIFI_AP_CREDENTIALS     "neOSensor"


/*
 * Modules related definitions
 */
/* a module's config file will be something like
 * "/module_luminosity.json"
 */
#define MCFG_FILE_PREFIX        "/module_"
#define MCFG_FILE_SUFFIX        ".json"


#endif /* _NEOCAMPUS_H */
