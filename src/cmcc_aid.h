#ifndef _CMCC_AID_H_
#define _CMCC_AID_H_

#ifdef __cplusplus
extern "C" {
#endif
#include <stdint.h>

#define MAXMAC ( 4)      /* maxmum station for MAC */

typedef struct		/* GNSS positioning solution 1 */
{
	int     id;
    double  tow;    /* GPS week second */
    double  lat;    /* latitude  [deg] */
    double  lon;    /* longitude [deg] */
    float   alt;    /* altitude  [m]   */
    float   acc_N;  /* accuracy in North/Latitude [m] */
    float   acc_E;  /* accuracy in East/Longitude [m] */
    float   acc_U;  /* accuracy in Up/Height/Altitude [m] */
    float   pdop;   /* Position (3D) dilution of precision */
    uint8_t nsat;   /* number of satellite used */
    uint8_t type;   /* solution type 0: invalid, 1: spp, 4: RTK fix, 5 RTK float */
}aid_sol_t;

typedef struct		/* GNSS positioning protection level information 2 */
{
	int    id;
	double tow;	/* GPS week second */
    float  pvar;   /* posterior variance */
    float  hpl;    /* horizontal protection level */
    float  vpl;    /* vertical protection level */
}aid_ppl_t;

typedef struct		/* GNSS satellite integraity information & ion + trop infomation */
{
	uint8_t sys;    /* satellite system id 0,1,2,3,4 (GPS,GLO,GAL,QZS,BDS) */
	uint8_t prn;	/* satellite prn number         */
	uint8_t status;	/* satellite status validation (from monitoring station) bit 0: healthy(svh), bit 1: monitor(svm), bit 2: ion, bit 3: tro */
	float   ion_rms;/* ionspheric   residual level [m] */
	float   tro_rms;/* tropospheric residual level [m] */
}aid_sat_t;

typedef struct		/* GNSS positioning observation residuals */
{
	uint8_t  sys;   /* satellite system id 0,1,2,3,4 (GPS,GLO,GAL,QZS,BDS) */
	uint8_t  prn;	/* satellite number */
	uint16_t rcv;
	uint8_t  status;/* status */
	float    ion;	/* ionspheric   residual       [m] */
	float    tro;	/* tropospheric residual       [m] */
}aid_atm_t;

typedef struct		/* receiver coordinate */
{
	uint16_t rcv;	/* receiver ID */
	double tow;		/* time of week [s]*/
	double lat;		/* latitude  [deg] */
	double lon;		/* longitude [deg] */
	double alt;		/* altitude  [m]   */
}aid_rcv_t;

#define SVH_BIT 0
#define SVM_BIT 1
#define ION_BIT 2
#define TRO_BIT 3

#ifdef __cplusplus
}
#endif

#endif
