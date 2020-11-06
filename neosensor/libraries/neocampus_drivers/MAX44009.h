/**************************************************************************/
/*! 
    @file     MAX44009.h
    @author   L.Jeanmougin & F.Thiebolt
    @section LICENSE
	  @license
	
    This is part of a the neOCampus drivers library.
    MAX44009 is a luminosity sensor featuring an I2C interface
    It allows measures up to 188.000 lux !!
        
    (c) Copyright 2020 Thiebolt.F <thiebolt@irit.fr>

	@section  HISTORY

    2020-Nov  - F.Thiebolt    integration
    2020-Oct  - L.Jeanmougin  Initial release
*/
/**************************************************************************/

#ifndef _MAX44009_H_
#define _MAX44009_H_

/*
 * Includes
 */
#include <Arduino.h>

// generic sensors driver
#include "generic_driver.h"



/*
 * Definitions
 */
// Registers definition
enum
{
  MAX44009_REG_INTERRUPT_STATUS = 0x00,
  MAX44009_REG_INTERRUPT_ENABLE = 0x01,
  MAX44009_REG_CONFIG           = 0x02,
  MAX44009_REG_LUX_UPPER        = 0x03,
  MAX44009_REG_LUX_LOWER        = 0x04,
  MAX44009_REG_THRESHOLD_UPPER  = 0x05,
  MAX44009_REG_THRESHOLD_LOWER  = 0x06,
  MAX44009_REG_THRESHOLD_TIMER  = 0x07
};

// Register: MAX44009_REG_INTERRUPT_ENABLE
#define MAX44009_ENABLE_INTR      0x01
#define MAX44009_DISABLEINTR      0x00

/* Register: MAX44009_REG_CONFIG
 * Note: when using automatic ranging mode (prefered), no hassle about integration
 * time BUT to properly read LUX high and low bytes BOTH at the SAME TIME, we need
 * i2c with Repeated START command (i.e NO STOP in between) to avoid inconsistency
 * ==> i2c readList( ... ) function
 */
#define MAX44009_AUTO_RANGING     0x03    // automatic mode for ranging and integration :)

typedef enum {
  MAX44009_INTEGRATIONTIME_800MS = 0x00, // 800ms (default) (Lowest power usage)
  MAX44009_INTEGRATIONTIME_400MS = 0x01, // 400ms
  MAX44009_INTEGRATIONTIME_200MS = 0x02, // 200ms
  MAX44009_INTEGRATIONTIME_100MS = 0x03, // 100ms
  MAX44009_INTEGRATIONTIME_50MS  = 0x04, // 50ms
  MAX44009_INTEGRATIONTIME_25MS  = 0x05, // 25ms
  MAX44009_INTEGRATIONTIME_12MS  = 0x06, // 12.5ms
  MAX44009_INTEGRATIONTIME_6MS   = 0x07  // 6.25ms
} MAX44009IntegrationTime_t;
#define MAX44009_INTEGRATION_TIME_MASK  0x07  //bits [2:0] of config register


// typical registers values after Power On Reset
#define MAX44009_REG_CONFIG_DEFL      0x03  // [POR] control register default value
#define MAX44009_REG_THRESHOLD_DEFL   0xFF00  // [POR] threshold upper register default value



/*
 * Class
 */
class MAX44009 : public generic_driver {
  public:
    MAX44009( void );

    boolean begin( uint8_t );       // start with an i2c address
    // no need to set resolution as it is automated as default

    void powerON( void );       // switch ON
    void powerOFF( void );      // switch OFF

    // send back sensor's value and units (e.g "32,5" "°C", <i2c_addr> )
    boolean acquire( float* );
    const char *sensorUnits( void ) { return units; };
    String subID( void ) { return String(_i2caddr); };

    // --- static methods / constants -----------------------
    
    // list of possibles I2C addrs
    static const uint8_t i2c_addrs[2];

    // device detection
    static boolean is_device( uint8_t );

  private:
    // --- private methods
    float _calculateLux( uint8_t, uint8_t );  // low byte, high byte
    static bool _check_identity( uint8_t );   // check device is what we expect!

    // --- private attributes
    uint8_t _i2caddr;
    static const char *units;
};

#endif /* _MAX44009_H_ */