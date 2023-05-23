/*
  Ice Nucleation Controller (Field Version) Command List
  - Sent over Serial (USB)

  Every message is wrapped with a start '<' and an end mark '<'
    '<COMMAND>'

  Example:
    '<FL>' - Returns a list of all files on the local storage

  Mads Rosenhøj Jepepsen
  Aarhus University
  2023
*/

#pragma once

// Wrappers
#define CMD_START_MARK '<'
#define CMD_END_MARK   '>'

// Debugging
#define CMD_DEBUG      'D'
#define CMD_DEBUG_A    'A'
#define CMD_DEBUG_B    'B'
#define CMD_DEBUG_C    'C'

// PID Contorller
#define CMD_PID        'P'
#define CMD_PID_UPDATE 'U'
#define CMD_PID_SETKP  'P'  // Kp x 10000
#define CMD_PID_SETKI  'I'  // Ki x 10000
#define CMD_PID_SETKD  'D'  // Kd x 10000
#define CMD_PID_GETKP  'p'
#define CMD_PID_GETKI  'i'
#define CMD_PID_GETKD  'd'

// ------------------------------------------------------------ //
//                      Example Commands                        //
// ------------------------------------------------------------ //

// Clock setup
// <CY22><CM9><CD28><CH12><Cm25><CP>
// 2022/09/28/12:25

// Local storage Clear
// <FRdata/22072117.csv><FRdata/22072117.log>
// <FRdata/22072123.csv><FRdata/22072123.log><FRdata/22072100.csv><FRdata/2207210o.l0g>
// <FRdata/22072105.csv><FRdata/22072105.log>
// <FRdata/22072106.csv><FRdata/22072106.log>
// <FRdata/22072111.csv><FRdata/22072111.log>
// <FRdata/22072115.csv><FRdata/22072115.log>'
//
// <FRdata/>