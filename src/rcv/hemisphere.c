#include "rtklib.h"

static const char rcsid[] = "$Id:$";
#ifndef _WIN32
typedef char                CHAR;
typedef int8_t              BOOL;
typedef uint8_t             BYTE;
typedef int16_t             SHORT;
typedef uint16_t            USHORT;
typedef int32_t             INT;
typedef uint32_t            UINT;
typedef int32_t             LONG;
typedef uint32_t            ULONG;
typedef uint64_t            LONG64;
typedef uint64_t            ULONG64;

#ifndef FALSE
#define FALSE               0
#endif

#ifndef TRUE
#define TRUE                1
#endif
#endif
/* constants -----------------------------------------------------------------*/
#define RTCM2PREAMB 0x66        /* rtcm ver.2 frame preamble */
#define RTCM3PREAMB 0xD3        /* rtcm ver.3 frame preamble */
#define HEMIBPREAMB 0x24        /* rtcm ver.3 frame preamble */
#define MSN_NUM 6

#define CHANNELS_gen 16

#define  GPS_OBSERVATIONS  76
#define  GPS_OBSERVATIONS_SINGLE_FREQUENCY 96
#define  GLONASS_OBSERVATIONS 66
#define  BEIDOU_OBSERVATIONS 36
#define  FULL_OBSERVATIONS  16

#define GPS_EPHEMERIS  95
#define GLONASS_EPHEMERIS 65
#define BEIDOU_EPHEMERIS  35
#define GALILEO_EPHEMERIS  45
#define QZSS_EPHEMERIS 25
#define SBAS_EPHEMERIS 93
#define NAVIC_EPHEMERIS 55

#define GPS_IONO_CORRECTIONS  94
#define SBAS_CORRECTIONS  80

#define CHANNELS_12    12
#define CHANNELS_L1_E  15
#define CHANNELS_20    20

#define CHANNEL_SBAS_E 3

#define BDSSBAS_EPHEMERIS 135

#define lSEC_PER_HALF_WEEK 302400
#define lSEC_PER_WEEK 604800
#define CGCS2000oe 7.2921150E-5  // Beidou

#define SIX_HOUR_FIT 1                               /* For ephemeris age. */

const int32_t const_WeekBDS3ToGps = 1356;
const int32_t const_BDS13BitWeekRollover = 0x2000;
const int32_t lGPSSecMinusBeidouSec = 14;  // leap secon

const double dTwoPwrM8 = 3.90625E-3;
const double dTwoPwrM9 = 1.953125E-3;
const double dTwoPwrM21 = 4.76837158203125E-7;
const double dTwoPwrM30 = 9.313225746154785E-10;
const double dTwoPwrM32 = 2.3283064365386963E-10;
const double dTwoPwrM34 = 5.8207660913467407E-11;
const double dTwoPwrM44 = 5.6843418860808015E-14;
const double dTwoPwrM50 = 8.8817841970012523E-16;
const double dTwoPwrM57 = 6.9388939039072284E-18;
const double dTwoPwrM66 = 1.3552527156068805E-20;

/*[2017/1/5 Amanda]*/
#define G1BITS  (0x1)
#define G2BITS  (0x3)
#define G3BITS  (0x7)
#define G4BITS  (0xF)
#define G5BITS  (0x1F)
#define G6BITS  (0x3F)
#define G7BITS  (0x7F)
#define G8BITS  (0xFF)
#define G9BITS  0x1FF
#define G10BITS 0x3FF
#define G11BITS 0x7FF
#define G12BITS 0xFFF
#define G13BITS (0x1FFF)
#define G14BITS 0x3FFF
#define G15BITS 0x7FFF
#define G16BITS 0xFFFF
#define G17BITS 0x1FFFF
#define G18BITS 0x3FFFF
#define G19BITS 0x7FFFF
#define G20BITS 0xFFFFF
#define G21BITS 0x1FFFFF
#define G22BITS 0x3FFFFF
#define G23BITS 0x7FFFFF
#define G24BITS 0xFFFFFF
#define G25BITS 0x1FFFFFF
#define G26BITS 0x3FFFFFF
#define G27BITS 0x7FFFFFF
#define G28BITS 0xFFFFFFF
#define G29BITS 0x1FFFFFFF
#define G30BITS 0x3FFFFFFF
#define G31BITS 0x7FFFFFFF
#define G34BITS 0x3FFFFFFFF
#define G36BITS 0xFFFFFFFFF
#define G38BITS 0x3FFFFFFFFF
#define G42BITS 0x3FFFFFFFFFF
#define G44BITS 0xFFFFFFFFFFF
#define G52BITS 0xFFFFFFFFFFFFF
#define G60BITS 0xFFFFFFFFFFFFFFF


/*[2017/2/16 Amanda]*/
#define GLONASS_BASENO    37
#define SBAS_BASENO_RINEX 100
#define QZSS_BASENO       192

/*[2018/6/25 Amanda]*/
#define SBAS_BASENO_INTERNAL1_LOWER  120 /* 120~158:  1~39 */
#define SBAS_BASENO_INTERNAL1_UPPER  158
#define SBAS_BASENO_INTERNAL1        119
#define SBAS_RINEX_BOUNDARY          40
#define SBAS_BASENO_INTERNAL2_LOWER  183 /* 183~187: 40~44 */
#define SBAS_BASENO_INTERNAL2_UPPER  187
#define SBAS_BASENO_INTERNAL2        143

#define  GPS_MAX_NO     32
#define  GLO_MAX_NO     24
//#define  CMP_MAX_NO     37
#define  CMP_MAX_NO     63
#define  SBS_MAX_NO     44   /* ��24��Ϊ44: 120~158,183~187 */
#define  QZS_MAX_NO     20
#define  GAL_MAX_NO     36   //��20��Ϊ30
#define  IMES_MAX_NO    1
#define  NAVIC_MAX_NO   9/*8*/   //[2020/03/27]
#define  SATE_TOTAL_NO  (GPS_MAX_NO+GLO_MAX_NO+CMP_MAX_NO+SBS_MAX_NO+QZS_MAX_NO+GAL_MAX_NO+IMES_MAX_NO+NAVIC_MAX_NO+1)
//#define  NFREQ          5

#define GPS_SYSTEM      0
#define GLO_SYSTEM    (GPS_SYSTEM+GPS_MAX_NO)
#define CMP_SYSTEM    (GLO_SYSTEM+GLO_MAX_NO)
#define SBS_SYSTEM    (CMP_SYSTEM+CMP_MAX_NO)
#define QZS_SYSTEM    (SBS_SYSTEM+SBS_MAX_NO)
#define GAL_SYSTEM    (QZS_SYSTEM+QZS_MAX_NO)
#define IMES_SYSTEM   (GAL_SYSTEM+GAL_MAX_NO)
#define NAVIC_SYSTEM  (IMES_SYSTEM+IMES_MAX_NO)
#define OTHER_SYSTEM  (NAVIC_SYSTEM+NAVIC_MAX_NO)

#define GPS_C1C  0
#define GPS_C1P  1
#define GPS_C1Y  2
#define GPS_C1W  3
#define GPS_C1M  4
#define GPS_C1N  5
#define GPS_C1S  6
#define GPS_C1L  7
#define GPS_C1X  8   /* priority(from highest to lowest):CPYWMNSLX */
#define GPS_C2P  9
#define GPS_C2Y  10
#define GPS_C2W  11
#define GPS_C2C  12
#define GPS_C2M  13
#define GPS_C2N  14
#define GPS_C2D  15
#define GPS_C2S  16
#define GPS_C2L  17
#define GPS_C2X  18  /* priority:PYWCMNDSLX */
#define GPS_C5I  19
#define GPS_C5Q  20
#define GPS_C5X  21  /* priority:IQX */
#define GPS_SIGNAL_TOTAL 22

#define GPS_L1_MIN  0
#define GPS_L1_MAX  8
#define GPS_L2_MIN  9
#define GPS_L2_MAX  18
#define GPS_L5_MIN  19
#define GPS_L5_MAX  21  /* �������ȼ��������º������� */

#define GLO_C1P 0
#define GLO_C1C 1  /* priority:PC */
#define GLO_C4A 2
#define GLO_C4B 3
#define GLO_C4X 4
#define GLO_C2P 5
#define GLO_C2C 6
#define GLO_C6A 7
#define GLO_C6B 8
#define GLO_C6X 9
#define GLO_C3I 10
#define GLO_C3Q 11
#define GLO_C3X 12
#define GLO_SIGNAL_TOTAL 13

#define GLO_G1_MIN  0
#define GLO_G1_MAX  1
#define GLO_G1a_MIN 2
#define GLO_G1a_MAX 4
#define GLO_G2_MIN  5
#define GLO_G2_MAX  6
#define GLO_G2a_MIN 7
#define GLO_G2a_MAX 9
#define GLO_G3_MIN  10
#define GLO_G3_MAX  12

#define CMP_C2I 0
#define CMP_C2Q 1
#define CMP_C2X 2 /* priority:IQX */
#define CMP_C7I 3
#define CMP_C7Q 4
#define CMP_C7X 5
#define CMP_C7D 6
#define CMP_C7P 7
#define CMP_C7Z 8
#define CMP_C5D 9
#define CMP_C5P 10
#define CMP_C5X 11
#define CMP_C6I 12
#define CMP_C6Q 13
#define CMP_C6X 14
#define CMP_C6A 15
#define CMP_C1D 16
#define CMP_C1P 17
#define CMP_C1X 18
#define CMP_C1A 19
#define CMP_C1N 20
#define CMP_C8D 21
#define CMP_C8P 22
#define CMP_C8X 23
#define CMP_SIGNAL_TOTAL 24

#define CMP_B1_MIN  0    //304��ʽ
#define CMP_B1_MAX  2
#define CMP_B1C_MIN 16
#define CMP_B1C_MAX 20
#define CMP_B2a_MIN 9
#define CMP_B2a_MAX 11
#define CMP_B2_MIN 3
#define CMP_B2_MAX 8
#define CMP_B2x_MIN  21
#define CMP_B2x_MAX  23
#define CMP_B3_MIN  12
#define CMP_B3_MAX  15


#define SBS_C1C 0
#define SBS_C5I 1
#define SBS_C5Q 2
#define SBS_C5X 3
#define SBS_SIGNAL_TOTAL 4

#define GAL_C1C 0
#define GAL_C1A 1
#define GAL_C1B 2
#define GAL_C1X 3
#define GAL_C1Z 4  /* E1 priority:CABXZ */
#define GAL_C5I 5
#define GAL_C5Q 6
#define GAL_C5X 7  /* E5A priority:IQX */
#define GAL_C7I 8
#define GAL_C7Q 9
#define GAL_C7X 10 /* E5B */
#define GAL_C8I 11
#define GAL_C8Q 12
#define GAL_C8X 13 /* E5A+B */
#define GAL_C6A 14
#define GAL_C6B 15
#define GAL_C6C 16
#define GAL_C6X 17
#define GAL_C6Z 18 /* E6 priority:ABCXZ */
#define GAL_SIGNAL_TOTAL 19

#define GAL_L1_MIN 0
#define GAL_L1_MAX 4
#define GAL_L5_MIN 5
#define GAL_L5_MAX 7
#define GAL_L7_MIN 8
#define GAL_L7_MAX 10
#define GAL_L8_MIN 11
#define GAL_L8_MAX 13
#define GAL_L6_MIN 14
#define GAL_L6_MAX 18

#define QZS_C1C 0
#define QZS_C1S 1
#define QZS_C1L 2
#define QZS_C1X 3
#define QZS_C1Z 4  /* L1 priority:CSLXZ */
#define QZS_C2S 5
#define QZS_C2L 6
#define QZS_C2X 7  /* L2 priority:SLX */
#define QZS_C2W 8
#define QZS_C5I 9
#define QZS_C5Q 10
#define QZS_C5X 11 /* L5 */
#define QZS_C5D 12
#define QZS_C5P 13
#define QZS_C5Z 14
#define QZS_C6S 15
#define QZS_C6L 16
#define QZS_C6X 17 /* LEX */
#define QZS_C6E 18
#define QZS_C6Z 19
#define QZS_SIGNAL_TOTAL 20

#define QZS_L1_MIN 0   //304��ʽ
#define QZS_L1_MAX 4
#define QZS_L2_MIN 5
#define QZS_L2_MAX 8
#define QZS_L5_MIN 9
#define QZS_L5_MAX 14
#define QZS_L6_MIN 15
#define QZS_L6_MAX 19

#define IRN_C5C 0  //304��ʽ
#define IRN_C5A 1
#define IRN_C5B 2
#define IRN_C5X 3
#define IRN_C9C 4
#define IRN_C9A 5
#define IRN_C9B 6
#define IRN_C9X 7
#define IRN_SIGNAL_TOTAL 8

#define IRN_L5_MIN 0 //304��ʽ
#define IRN_L5_MAX 3
#define IRN_S_MIN  4
#define IRN_S_MAX  7

/* glonass Ԥ��Ƶ��ͨ�� */
static signed char g_acFreqChan[GLO_MAX_NO + 1] = { 100, 1, -4, 5, 6, 1, -4, 5, 6, -2, -7,
	0, -1, -2, -7, 0, -1, 4, -3, 3, 2, 4, -3, 3, 2
}; //5��6��������1��-4����-7��1��

#define LIGHT_SPEED 2.99792458E8

typedef struct
//struct GPSTime
{
	int year;
	int month;
	int day;
	int hour;
	int min;
	double second;

	int week;
	double GPSSec;

    /*
	GPSTime(int sweek = 0, double gpsec = 0)
	{
		year = month = day = hour = min = 0;
		second = 0;

		//[2018/8/21 Amanda]
		week = sweek;
		gpsec = GPSSec;
	}

	void init()
	{
		year = month = day = hour = min = week = 0;
		second = GPSSec = 0;
	}

	friend double operator-(GPSTime A, GPSTime B)
	{
		double dResult = 0;

		dResult = (A.week - B.week) * 604800 + (A.GPSSec - B.GPSSec);

		return dResult;
	}

	friend GPSTime operator+(GPSTime A, double sec)
	{
		GPSTime Result = A;

		Result.GPSSec += sec;
		if (Result.GPSSec >= 604800)
		{
			Result.GPSSec -= 604800;
			++Result.week;
		}
		else if (Result.GPSSec < 0)
		{
			Result.GPSSec += 604800;
			--Result.week;
		}

		return Result;
	}

	friend GPSTime operator-(GPSTime A, double sec)
	{
		GPSTime Result = A;

		Result.GPSSec -= sec;
		if (Result.GPSSec >= 604800)
		{
			Result.GPSSec -= 604800;
			++Result.week;
		}
		else if (Result.GPSSec < 0)
		{
			Result.GPSSec += 604800;
			--Result.week;
		}

		return Result;
	}

	BOOL IsTimeValid() const
	{
		if (year > 1980 && year < 2080)
		{
			return TRUE;
		}
		else if (week > 0)
		{
			return TRUE;
		}

		return FALSE;
	}
    */

} GPSTime;

static double GPSTime_diff(GPSTime A, GPSTime B)
{
    double dResult = 0;

    dResult = (A.week - B.week) * 604800 + (A.GPSSec - B.GPSSec);

    return dResult;
}

enum ephstruc {
	eEPH_TYPE_BDS3_GEO = 1,
	eEPH_TYPE_BDS3_IGSO = 2,
	eEPH_TYPE_BDS3_MEO = 3,
	eEPH_TYPE_UNKNOWN = 0
};

enum eGalEphSource
{
	eGALILEO_SRC_E1B = 0x1,        // Bit 0 set: I/NAV E1-B
	eGALILEO_SRC_E5A = 0x2,        // Bit 1 set: F/NAV E5a-I
	eGALILEO_SRC_E5B = 0x4,        // Bit 2 set: I/NAV E5b-I
	eGALILEO_CLK_E1_E5A = 0x100,    // Bit 8 set: af0-af2, Toc, SISA are for F/NAV : E5a,E1
	eGALILEO_CLK_E1_E5B = 0x200     // Bit 9 set: af0-af2, Toc, SISA are for I/NAV : E5b,E1
};

// See GALILEO OS SIS ICD
// DVS : 0 -- valid; 1 -- working without guarantee
// HS : 0 -- Signal OK; 1 -- Signal out of service, 2 -- Signal will be out of service, 
//      3 -- Signal Component currently in Test
enum eGalEphHealth
{
	eGALILEO_HEALTH_E1B_DV = 0x1,           // bit0
	eGALILEO_HEALTH_E1B_HS = 1,             // bit 1-2
	eGALILEO_HEALTH_E5A_DV = (0x1 << 3),    // bit 3
	eGALILEO_HEALTH_E5A_HS = 4,             // bit 4-5
	eGALILEO_HEALTH_E5B_DV = (0x1 << 6),    // bit 6
	eGALILEO_HEALTH_E5B_HS = 7,             // bit 7-8
};

enum  eBDS3_EPHM_PARAMETER_ADDR_TYPE {
	eBDS3E_sow = 0,   //  time of week in Msg10 (first part of ephm) (sow in Msg 18-bits but that is *3)
	// valid[22] 1 = valid
	//  origin[21:20] [2-bits : Signal of Data Origin : 0 B1C, 1 B2A, 3 B2B
	//  sow[19:0]     [20-bits unsigned] LSB - 1 second
	//                                   time of week in Msg10 (first part of ephm) 
	//                                   (sow in Raw Msg data is 18-bits LSB-3seconds, 
	//                                    but here it is already *3 so LSB is 1second (and 20-bits)

	eBDS3E_WN = 1,   //  WN          [13-bit unsigned] weekNumber                          

	eBDS3E_HealthIntegritySISMAI = 2,   // 23-bits 
	// [22:21] HEALTH    [2-bit]
	// [20]    B2b_DIF   [1-bit]
	// [19]    B2b_SIF   [1-bit]
	// [18]    B2b_AIF   [1-bit]
	// [17:14] B2b_SISMAI[4-bit]
	// [13]    B2a_DIF   [1-bit]
	// [12]    B2a_SIF   [1-bit]
	// [11]    B2a_AIF   [1-bit]
	// [10:7]  B2a_SISMAI[4-bit]
	// [6]     B1C_DIF   [1-bit]
	// [5]     B1C_SIF   [1-bit]
	// [4]     B1C_AIF   [1-bit]
	// [3:0]   B1C_SISMAI[1-bit]

	//Ephm from Msg10,11 ("protected" by IODE)
	eBDS3E_Eph_IODE = 3,   // IODE         [8-bit  unsigned]
	eBDS3E_Eph_toe_satetype = 4,   // [12:2]-toe   [11-bit unsigned] toe LSB = 300 seconds 
	// [1:0]-satype [2-bit] satetype 01-GEO,10-IGSO,11-MEO,00-Reserved
	eBDS3E_Eph_delta_A = 5,   // DeltaA       [26-bit sign extended to fill 32-bits] LSB=2^(-9) m 
	eBDS3E_Eph_Rate_A = 6,   // RateA        [25-bit unsigned] LSB=2^(-21) m/s
	eBDS3E_Eph_DeltaN0 = 7,   // DeltaN0      [17-bit sign extended to fill 32-bits] LSB=2^(-44) pi/s
	eBDS3E_Eph_Rate_DeltaN0 = 8,   // RateDeltaN0  [23-bit sign extended to fill 32-bits] LSB=2^(-57) pi/s^2
	eBDS3E_Eph_M_MeanAnomaly_msb = 9,   // M0           [upper 33 bit of 33-bit signed] LSB=2^(-32) pi
	eBDS3E_Eph_Eccentricity_msb = 10,  // e            [upper 33 bit of 33-bit signed] LSB=2^(-34) no unit
	eBDS3E_Eph_Omega_Perigee_msb = 11,  // OMEGAW       [upper 33 bit of 33-bit signed] LSB=2^(-32) pi
	eBDS3E_Eph_OMEGA0_Lon_Ascending_msb = 12,  // OMEGA0       [upper 33 bit of 33-bit signed] LSB=2^(-32) pi
	eBDS3E_Eph_io_InclinationAngle_msb = 13,  // i0           [upper 32 bit of 33-bit signed] LSB=2^(-32) pi
	eBDS3E_Eph_LSB_Mo_e_o_oo_io = 14,  // lsb of 33-bit terms (bit4-M0, bit3-e, bit2-Omega, bit1-Omega0, bit0-io)
	eBDS3E_Eph_OMEGA_DOT = 15,  // OMEGADOT     [19-bit sign extended to fill 32-bits] LSB=2^(-44) pi/s
	eBDS3E_Eph_IDOT_RateInclination = 16,  // IDOT         [15-bit sign extended to fill 32-bits] LSB=2^(-44) pi/s
	eBDS3E_Eph_CisCic_HarmonicInclination = 17,  // [31:16] Cis  [16-bit sign extended to fill 16-bits] LSB=2^(-30) rad
	// [15:0]  Cic  [16-bit sign extended to fill 16-bits] LSB=2^(-30) rad
	eBDS3E_Eph_Crs_SinHarmonicRadius = 18,  // Crs          [24-bit sign extended to fill 32-bits] LSB=2^(-8) m 
	eBDS3E_Eph_Crc_CosHarmonicRadius = 19,  // Crc          [24-bit sign extended to fill 32-bits] LSB=2^(-8) m
	eBDS3E_Eph_Cus_SinHarmonicLat = 20,  // Cus          [21-bit sign extended to fill 32-bits] LSB=2^(-30) rad
	eBDS3E_Eph_Cuc_CosHarmonicLat = 21,  // Cuc          [21-bit sign extended to fill 32-bits] LSB=2^(-30) rad

	//Clock from either Msg30,31,32,33,34 ("protected" by IODC)
	eBDS3E_Clk_IODC = 22,  // IODC         [10-bit unsigned] LSB=1
	eBDS3E_Clk_a0 = 23,  // a0           [25-bit sign extended to fill 32 bits] clock correction parameters referene time LSB = 2^(-34)
	eBDS3E_Clk_a1 = 24,  // a1           [22-bit sign extended to fill 32 bits] clock time bias correction, LSB=2^(-50)
	eBDS3E_Clk_toc_a2 = 25,  // [26:16] toc  [11-bit unsigned] LSB = 300 seconds
	// [15:0]  a2   [11-bit sign extended to fill 16 bits] clock time drift, LSB=2^(-66)

	//not sure if this data is "protected" by IODC
	eBDS3E_TgdB2ap_IscB2ad = 26,  // [31:16] B2a TGDB2ap = [12-bit sign extended to fill 16 bits] LSB=2^(-34)sec  (sent by both B2a and B1c msg)
	// [15:0]  B2a ISCB2ad = [12-bit sign extended to fill 16 bits] LSB=2^(-34)sec  (sent only by B2a msg)

	eBDS3E_TgdB1cp_IscB1cd = 27,  // [31:16] B1c TGDB1cp = [12-bit sign extended to fill 16 bits] LSB=2^(-34)sec  (sent by both B2a and B1c msg
	// [15:0]  B1c ISCB1cd = [12-bit sign extended to fill 16 bits] LSB=2^(-34)sec  (sent only by B1c msg)

	eBDS3E_TgdB2bl = 28, //[31:16]spare
	//[15:0] TgdB2bl  [12-bit sign extended to fill 16 bits] LSD = 2^(-34)sec(sent by B2b in NON-GEO)

	eBDS3E_SISAI = 29,  // SISAI     27 bits total
	// SISAI-oc-oe   [26:22]   [5-bit] SV orbit along-track/cross-track accuracy
	// SISAI-oc-top  [21:11]   [11-bit] time of week for data prediction
	// SISAI-oc-ocb  [10:6]    [3-bit] SV orbit radius and fixed clock bias accuracy
	// SISAI-oc-oc1  [5:3]     [3-bit] SV clock bias accuracy
	// SISAI-oc-oc2  [2:0]     [3-bit] SV clock drift accuracy
	eBDS3E_SIZE
};

/* type definition -----------------------------------------------------------*/
typedef struct
{
	ULONG  CS_TT_W3_SNR;
	//Bits 0-11 (12 bits) =SNR_value
	//For L1 SNR = 10.0*log10( 0.1024*SNR_value),log2 or log10?
	//For L2 SNR = 10.0*log10( 0.1164*SNR_value)
	//Bits 12-14 (3 bits) = 3 bits of warning for potential 1/2 cycle slips. A warning exists if any of these bits are set.
	//Bit 15: (1 bit) 1 if Track Time > 25.5 sec, 0 otherwise
	//Bits 16-23 (8 bits): Track Time in units of 1/10 second (range = 0 to 25.5 seconds)
	//Bits 24-31 (8 bits) = Cycle Slip Counter,Increments by 1 every cycle slip with natural roll-over after 255

	ULONG  P7_Doppler_FL;
	//Bit 0: (1 bit) 1 if Valid Phase, 0 otherwise
	//Bit 1-23: (23 bits) =Magnitude of Doppler,LSB = 1/512 cycle/sec,Range = 0 to 16384 cycle/sec
	//Bit 24: sign of Doppler, 1=negative, 0=pos
	//Bits 25-31 (7 bits) = upper 7 bits of the 23 bit carrier phase,LSB = 64 cycles,MSB = 4096 cycles

	ULONG  CodeAndPhase;
	//Bit 0-15 (16 bits) lower 16 bits of code pseudo-range,LSB = 1/256 meters,MSB = 128 meters
	//The upper 19 bits are given in m_aulCACodeMSBsPRN[] for CA code
	//Bit 16-31 lower 16 bits of the carrier phase, 7 more bits are in m_ulP7_Doppler_FL
	//LSB = 1/1024 cycles MSB = 32 cycles 
}SObsPacket;

typedef struct
{
	double           m_dTow;                  // Time in seconds (8 bytes)
	uint16_t         m_wWeek;                 // GPS Week Number (2 bytes)
	uint16_t         m_wSpare1;               // spare 1 (zero)  (2 bytes)

	uint32_t         m_uPageCount; //[0-15] Spare bits
								   //[16,17,18,19,20,21] Number of Pages = N
								   //[22,23,24,25,26,27] Page Number [0...N-1]
								   //[28,29,30,31] Spare bits
								   // Bit mask of all signals included in the set of pages

	uint32_t         m_uAllSignalsIncluded_01;  // bit 0  = GPS:L1CA included 
												// bit 1  = GPS:L2P included
												// bit 2  = GPS:L2C included 
												// bit 3  = GPS:L5 included
												// bit 7:4 = spare
												// bit 8  = GLO:G1C or GLO:G1P included 
												// bit 9  = GLO:G2C or GLO:G1P included
												// bit 15:10 = spare
												// bit 16 = GAL:E1BC included 
												// bit 17 = GAL:E5A included 
												// bit 18 = GAL:E5B included 
												// bit 23:19 = spare
												// bit 24 = BDS:B1I included 
												// bit 25 = BDS:B2I included 
												// bit 26 = BDS:B3I included 
												// bit 31:27 = spare
	uint32_t         m_uAllSignalsIncluded_02;  // bit 0  = QZS:L1CA included 
												// bit 1  = spare
												// bit 2  = QZS:L2C included 
												// bit 3  = QZS:L5 included
												// bit 4  = QZS:L1C included
												// bit 31:5 = spare
	SObsPacket       m_asObs[CHANNELS_gen];     // 16 sets of observations (16*12=192 bytes)
	uint32_t         m_aulCodeMSBsPRN[CHANNELS_gen]; // array of 16, 32 bit words   (16*4=64 bytes)
													 // bit 7:0 (8 bits) = satellite PRN,
													 //                  = 0 if no satellite
													 // bit 12:8 (5 bits) = Log_Base_2(X+1)
													 //        where X = Time, in units of 1/100th sec,
													 //        since carrier phase tracking was last stressed
													 //        or cycle slipped
													 // bit 31:13 (19 bits) = upper 19 bits
													 // of code pseudorange LSB = 256 meters
													 //                     MSB = 67108864 meters
	uint16_t         m_awChanSignalSYS[CHANNELS_gen]; // Array of 16, 16 bit words (32 bytes)
													 //[15,14]  spare bits
													 //[13] = 1 if GLONASS P-Code
													 //[12,11,10,9,8] = Channel (0 is the first channel) for glonass
													 //[7,6,5,4] = Signal ID (L1CA, L5, G1, B1I, B2I, B3I, etc)
													 // GPS Signal ID: L1CA=0, L2P=1, L2C=2, L5=3
													 // GLO Signal ID: G1C/G1P=0, G2C/G2P=1
													 // GAL Signal ID: E1BC=0, E5A=1, E5B=2
													 // BDS Signal ID: B1I=0, B2I=1, B3I=2
													 // QZS Signal ID: L1CA=0, L2C=2, L5=3, L1C=4
													 //[3,2,1,0] = GLO System, 0=GPS,1=GLO,2=GAL,3=BDS,4=QZS
} SBinaryMsg16;

typedef struct// Hemis_MeasBlock
{
	double  dPsr;
	double  dPhase;
	double  dSNR;
	double  dDop;
	double  dTrackTime;
	BOOL    bTrackTimeFlag;
	BYTE    nCycleSlip;
	BYTE    nSlipWarn;
	int     nLLI;
	BYTE    nSignalType;

	BOOL    bPhaseValid;

	UINT    nPhase;  //23bit��λ
	ULONG64 nPsr;    //35bitα��
    /*
	Hemis_MeasBlock()
	{
		nLLI = nCycleSlip = 0;
		dPsr = dPhase = dDop = dSNR = dTrackTime = 0.0;
		bPhaseValid = bTrackTimeFlag = FALSE;
		nSlipWarn = 0;
		nPhase = 0;
		nPsr = 0;
		nSignalType = 0;
	}
    */
} Hemis_MeasBlock;

typedef struct
{
	gtime_t time;
	int iPagesTotal;
	//std::vector<int> iPageNumberVec;
}Msg16PapeStruct;

/* ssr update intervals ------------------------------------------------------*/
static const double ssrudint[16] = {
	1,2,5,10,15,30,60,120,240,300,600,900,1800,3600,7200,10800
};
/* get sign-magnitude bits ---------------------------------------------------*/
static double getbitg(const unsigned char *buff, int pos, int len)
{
	double value = getbitu(buff, pos + 1, len - 1);
	return getbitu(buff, pos, 1) ? -value : value;
}
/* adjust weekly rollover of gps time ----------------------------------------*/
static void adjweek(rtcm_t *rtcm, double tow)
{
	double tow_p;
	int week;

	/* if no time, get cpu time */
	if (rtcm->time.time == 0) rtcm->time = utc2gpst(timeget());
	tow_p = time2gpst(rtcm->time, &week);
	if (tow < tow_p - 302400.0) tow += 604800.0;
	else if (tow > tow_p + 302400.0) tow -= 604800.0;
	rtcm->time = gpst2time(week, tow);
}

/* adjust weekly rollover of bds time ----------------------------------------*/
static void adjweek_bds(rtcm_t *rtcm, double tow)
{
	double tow_p;
	int week;

	/* if no time, get cpu time */
	if (rtcm->time.time == 0) {
		rtcm->time = utc2gpst(timeget());
		rtcm->time = gpst2bdt(rtcm->time);
	}
	tow_p = time2bdt(rtcm->time, &week);
	if (tow < tow_p - 302400.0) tow += 604800.0;
	else if (tow > tow_p + 302400.0) tow -= 604800.0;
	rtcm->time = bdt2time(week, tow);
}

/* adjust weekly rollover of galileo time ----------------------------------------*/
static void adjweek_gal(rtcm_t *rtcm, double tow)
{
	double tow_p;
	int week;

	/* if no time, get cpu time */
	if (rtcm->time.time == 0) {
		rtcm->time = utc2gpst(timeget());
		rtcm->time = gpst2bdt(rtcm->time);
	}
	tow_p = time2bdt(rtcm->time, &week);
	if (tow < tow_p - 302400.0) tow += 604800.0;
	else if (tow > tow_p + 302400.0) tow -= 604800.0;
	rtcm->time = bdt2time(week, tow);
}


/* adjust daily rollover of glonass time -------------------------------------*/
static void adjday_glot(rtcm_t *rtcm, double tod)
{
	gtime_t time;
	double tow, tod_p;
	int week;

	if (rtcm->time.time == 0) rtcm->time = utc2gpst(timeget());
	time = timeadd(gpst2utc(rtcm->time), 10800.0); /* glonass time */
	tow = time2gpst(time, &week);
	tod_p = fmod(tow, 86400.0); tow -= tod_p;
	if (tod < tod_p - 43200.0) tod += 86400.0;
	else if (tod > tod_p + 43200.0) tod -= 86400.0;
	time = gpst2time(week, tow + tod);
	rtcm->time = utc2gpst(timeadd(time, -10800.0));
}

static LONG64 getSignData(ULONG64 data, int bitNum, int twoComplement)
{
	if (twoComplement)
	{
		if (bitNum == 64)
		{
            //return static_cast<LONG64>(data);
            return (LONG64)(data);
		}
		else
		{
			int spareBit = 64 - bitNum;

            //return (static_cast<LONG64>(data << spareBit) >> spareBit);
            return ((LONG64)(data << spareBit) >> spareBit);
		}
	}/* 2c(n)b */
	else
	{
		int sign = 1;
		if (data >> (bitNum - 1) & G1BITS)
		{
			sign = -1;
		}

		ULONG64 Mask = 0;
		for (int i = 0; i < (bitNum - 1); ++i)
		{
			Mask |= (0x1 << i);
		}

		data &= Mask;

		return (data*sign);
	}/* s + (n-1)b */
}

double nBits2Double(int nData, int N, int nIncre, int bPos)
{
	double dResult;

	if (bPos)
	{
		nData = ((int)(nData << (32 - N))) >> (32 - N);
		if (nData < 0)
		{
			nData = abs(nData) - pow(2.0, N - 1);
		}
		dResult = nData * pow(2.0, nIncre);
	}
	else
	{
		BYTE nFlag = (nData >> (N - 1)) & 0x1;
		nData = (nData << (32 - N + 1)) >> (32 - N + 1);

		if (nFlag)
		{
			dResult = -nData * pow(2.0, nIncre);
		}
		else
		{
			dResult = nData * pow(2.0, nIncre);
		}
	}
	return dResult;
}

static double GetURAFromSISA(unsigned char uSISA)
{
	// Undefined/unknown: -1.0
	double dURA = -1;

	//   0 ... 49   =  0 cm to 49 cm with 1 cm resolution
	//  50 ... 74   = 50 cm to 0.98 m with 2 cm resolution
	//  75 ... 99   = 1 m to 2 m with 4 cm resolution
	// 100 ... 125  = 2 m to 6 m with 16 cm resolution
	// 126 ... 254  = Spare
	// 255          = No Accuracy Prediction Available (NAPA)
	if (uSISA <= 49)
	{
		dURA = uSISA * 0.01;
	}
	else if (uSISA <= 74)
	{
		dURA = 0.5 + (uSISA - 50) * 0.02;
	}
	else if (uSISA <= 99)
	{
		dURA = 1.0 + (uSISA - 75) * 0.04;
	}
	else if (uSISA <= 125)
	{
		dURA = 2.0 + (uSISA - 100)* 0.16;
	}
	else if (uSISA <= 254)
	{
	}

	return dURA;
}

static int UnifySignalType(int nSystem, BYTE bPcode, int *nSignalType, int *codeType)
{
	int nFreq = 1;

	if (nSystem == GPS_SYSTEM)
	{
		nFreq = *nSignalType + 1;

		if (*nSignalType == 0)
		{
			*nSignalType = GPS_C1C;
			nFreq = 0;
			*codeType = 1;
		}
		else if (*nSignalType == 1)
		{
			*nSignalType = GPS_C2W;
			nFreq = 1;
			*codeType = 19;
		}
		else if (*nSignalType == 2)
		{
			*nSignalType = GPS_C2S;  /* ����L2�۲�����?? *///��GPS_C2C�޸�ΪGPS_C2X�޸�[2019/09/04]
			nFreq = 2;
			*codeType = 16;
		}
		else if (*nSignalType == 3)
		{
			*nSignalType = GPS_C5Q;//��GPS_C5I�޸�ΪGPS_C5Q [2019/09/04]
			nFreq = 3;
			*codeType = 25;
		}
		/*else if (*nSignalType == 4)
		{
			*nSignalType = GPS_C1S;
		}*/

	}
	else if (nSystem == GLO_SYSTEM)
	{
		nFreq = *nSignalType + 1;

		if (*nSignalType >= 4)
		{
			if (*nSignalType == 4)
			{
				*nSignalType = GLO_C4A;
			}
			else if (*nSignalType == 5)
			{
				*nSignalType = GLO_C6A;
			}
			else if (*nSignalType == 6)
			{
				*nSignalType = GLO_C3Q;
			}
		}
		else
		{
			if (bPcode)
			{
				if (*nSignalType == 0)
				{
					*nSignalType = GLO_C1P;
					nFreq = 0;
					*codeType = 2;
				}
				else if (*nSignalType == 1)
				{
					*nSignalType = GLO_C2P;
					nFreq = 1;
					*codeType = 19;
				}
			}
			else
			{
				if (*nSignalType == 0)
				{
					*nSignalType = GLO_C1C;
					nFreq = 0;
					*codeType = 1;
				}
				else if (*nSignalType == 1)
				{
					*nSignalType = GLO_C2C;
					nFreq = 1;
					*codeType = 14;
				}
			}
		}
	}
	else if (nSystem == CMP_SYSTEM)
	{
		nFreq = *nSignalType + 1;
		/*BDS Signal ID:
		B1I=0,	-> C2I
		B2I=1,	-> C7I
		B3I=2,	-> C6I
		B1BOC=3,
		B2A=4,
		B2B=5,
		B3C=6,
		ACEBOC=7*/
		if (*nSignalType == 0)
		{
			*nSignalType = CMP_C2I;
			nFreq = 0;
			*codeType = 40;
		}
		else if (*nSignalType == 1)
		{
			*nSignalType = CMP_C7I;
			nFreq = 1;
			*codeType = 27;
		}
		else if (*nSignalType == 2)
		{
			*nSignalType = CMP_C6I;
			nFreq = 2;
			*codeType = 42;
		}
		else if (*nSignalType == 3)
		{
			*nSignalType = CMP_C1P;//B1C[2019/08/29]
			nFreq = 3;
			*codeType = 2;
		}
		else if (*nSignalType == 4)
		{
			*nSignalType = CMP_C5P;
			nFreq = 4;
			*codeType = 58;
		}
		//else if (*nSignalType == 5)
		//{
		//	*nSignalType = CMP_C7P;
		//}
		//////else if (*nSignalType==6)
		//////{
		//////	*nSignalType = CMP_C6A;//????
		//////}
		//else if (*nSignalType == 7)
		//{
		//	*nSignalType = CMP_C8P;
		//}
		else
		{
			*nSignalType = -1;
		}
	}
	else if (nSystem == GAL_SYSTEM)
	{
		nFreq = *nSignalType + 1;

		if (*nSignalType == 0)
		{
            *nSignalType = GAL_C1X;//��GAL_C1C�޸�ΪGAL_C1X [2019/10/15]
			nFreq = 0;
            *codeType = 12;
		}
		else if (*nSignalType == 1)
		{
            *nSignalType = GAL_C5X;//��GAL_C5Q��ΪGAL_C5X [2019/10/15]
			nFreq = 1;
            *codeType = 26;
		}
		else if (*nSignalType == 2)
		{
            *nSignalType = GAL_C7X;//��GAL_C7Q��ΪGAL_C7X [2019/10/15]
			nFreq = 2;
            *codeType = 29;
		}
		else if (*nSignalType == 3)//����[2019/05/30]
		{
            *nSignalType = GAL_C6C;
			nFreq = 3;
            *codeType = 60;
		}
		else if (*nSignalType == 4)//����[2019/05/30]
		{
            *nSignalType = GAL_C8Q;
			nFreq = 4;
            *codeType = 39;
		}
	}
	else if (nSystem == QZS_SYSTEM)
	{
		nFreq = *nSignalType;

		if (*nSignalType == 0)
		{
            *nSignalType = QZS_C1C; /* L1CA */
			nFreq = 0;
            *codeType = 1;
		}
		else if (*nSignalType == 2)
		{
            *nSignalType = QZS_C2X; /* L2C *///��QZS_C2S��ΪQZS_C2X [2019/09/04]
			nFreq = 1;
            *codeType = 18;
		}
		else if (*nSignalType == 3)
		{
            *nSignalType = QZS_C5Q; /* L5 *///��QZS_C5Iת��ΪQZS_C5Q[2019/09/04] 
			nFreq = 2;
            *codeType = 25;
		}
		//else if (*nSignalType == 4)
		//{
		//	*nSignalType = QZS_C1S; /* L1C */
		//}
	}
	else if (nSystem == SBS_SYSTEM)
	{
		if (*nSignalType == 0)
		{
            *nSignalType = SBS_C1C;
			nFreq = 0;
            *codeType = 1;
		}
		else if (*nSignalType == 3)
		{
            *nSignalType = SBS_C5I;
			nFreq = 3;
            *codeType = 24;
		}
	}
	else if (nSystem == NAVIC_SYSTEM)
	{
		//WriteFailLog(" %d nSignalType %d",__LINE__ , nSignalType);
	}

	return nFreq;
}

static double GetWaveLength(int iSystem, int iSignalType, int iFreq /* = InvalidFreq */)
{
	double dWaveLen = 0.0;
	if (iSystem == GPS_SYSTEM)
	{
		if (iSignalType >= GPS_L1_MIN && iSignalType <= GPS_L1_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1575420000.0;
		}
		else if (iSignalType >= GPS_L2_MIN && iSignalType <= GPS_L2_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1227600000.0;
		}
		else if (iSignalType >= GPS_L5_MIN && iSignalType <= GPS_L5_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1176450000.0;
		}
	}
	else if (iSystem == GLO_SYSTEM)
	{
		if (iFreq < -7 || iFreq > 13)
		{
			//printf("%d dWaveLen %f iFreq %d \n", __LINE__, dWaveLen, iFreq);
			return dWaveLen;
		}/*[2018/2/28 Amanda]*/

		if (iSignalType == GLO_C1C || iSignalType == GLO_C1P)
		{
			dWaveLen = LIGHT_SPEED / (1602000000 + 562500.0*iFreq);
		}
		else if (iSignalType == GLO_C2C || iSignalType == GLO_C2P)
		{
			dWaveLen = LIGHT_SPEED / (1246000000 + 437500.0*iFreq);
		}
		else if (iSignalType >= GLO_G1a_MIN && iSignalType <= GLO_G1a_MAX)  //304��ʽ
		{
			dWaveLen = LIGHT_SPEED / 1600995000.0;
		}
		else if (iSignalType >= GLO_G2a_MIN && iSignalType <= GLO_G2a_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1248060000.0;
		}
		else if (iSignalType >= GLO_G3_MIN && iSignalType <= GLO_G3_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1202025000.0;
		}
		//printf("%d dWaveLen %f iFreq %d \n", __LINE__, dWaveLen, iFreq);
	}
	else if (iSystem == CMP_SYSTEM)
	{
		if (iSignalType >= CMP_B1_MIN && iSignalType <= CMP_B1_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1561098000.0;
		}
		else if (iSignalType >= CMP_B2_MIN && iSignalType <= CMP_B2_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1207140000.0;
		}
		else if (iSignalType >= CMP_B3_MIN && iSignalType <= CMP_B3_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1268520000.0;
		}
		else if (iSignalType >= CMP_B1C_MIN && iSignalType <= CMP_B1C_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1575420000.0;
		}
		else if (iSignalType >= CMP_B2a_MIN && iSignalType <= CMP_B2a_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1176450000.0;
		}
		else if (iSignalType >= CMP_B2x_MIN && iSignalType <= CMP_B2x_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1191795000.0;
		}
	}
	else if (iSystem == SBS_SYSTEM)
	{
		if (iSignalType == SBS_C1C)
		{
			dWaveLen = LIGHT_SPEED / 1575420000.0;
		}
		else if (iSignalType >= SBS_C5I && iSignalType <= SBS_C5X)
		{
			dWaveLen = LIGHT_SPEED / 1176450000.0;
		}
	}
	else if (iSystem == QZS_SYSTEM)
	{
		if (iSignalType >= QZS_L1_MIN && iSignalType <= QZS_L1_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1575420000.0;
		}
		else if (iSignalType >= QZS_L2_MIN && iSignalType <= QZS_L2_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1227600000.0;
		}
		else if (iSignalType >= QZS_L5_MIN && iSignalType <= QZS_L5_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1176450000.0;
		}
		else if (iSignalType >= QZS_L6_MIN && iSignalType <= QZS_L6_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1278750000.0;
		}
	}
	else if (iSystem == GAL_SYSTEM)
	{
		if (iSignalType >= GAL_C1C && iSignalType <= GAL_C1Z)
		{
			dWaveLen = LIGHT_SPEED / 1575420000.0;
		}
		else if (iSignalType >= GAL_C5I && iSignalType <= GAL_C5X)
		{
			dWaveLen = LIGHT_SPEED / 1176450000;
		}
		else if (iSignalType >= GAL_C7I && iSignalType <= GAL_C7X)
		{
			dWaveLen = LIGHT_SPEED / 1207140000.0;
		}
		else if (iSignalType >= GAL_C8I && iSignalType <= GAL_C8X)
		{
			dWaveLen = LIGHT_SPEED / 1191795000.0;
		}
		else if (iSignalType >= GAL_C6A && iSignalType <= GAL_C6Z)
		{
			dWaveLen = LIGHT_SPEED / 1278750000.0;
		}
	}
	else if (iSystem == NAVIC_SYSTEM)//304��ʽ[2020/03/27]
	{
		if (iSignalType >= IRN_L5_MIN && iSignalType <= IRN_L5_MAX)
		{
			dWaveLen = LIGHT_SPEED / 1176450000;
		}
		else if (iSignalType >= IRN_S_MIN && iSignalType <= IRN_S_MAX)
		{
			dWaveLen = LIGHT_SPEED / 2492028000;
		}
	}

	return dWaveLen;
}

void GetObsValue(int nSystem, SObsPacket item, int nSignal, Hemis_MeasBlock *Obs)
{
	int nSNR = item.CS_TT_W3_SNR & 0xFFF;
	if (nSNR > 0)
	{
		// ֻ��gps-L2����ȼ��㲻ͬ [2018/10/25 Amanda]
		if (nSignal == GPS_C2P && nSystem == GPS_SYSTEM)
		{
			//Obs.dSNR = 10.0*log10(nSNR*0.1024*1000) - 6.0;  // ��L2C��6dB [2020/5/7 Amanda]
			Obs->dSNR = 10.0*log10(nSNR*0.1164 * 1000);  // ��L2C��6dB [2020/5/7 Amanda]
		}
		else
		{
			Obs->dSNR = 10.0*log10(nSNR*0.1024 * 1000);
		}
	}
	else
	{
		Obs->dSNR = 0.0;  //���������Ķ�����������0,����������
	}

	Obs->nSlipWarn = item.CS_TT_W3_SNR >> 12 & 0x7; //bit12-14��warn for potential half cycle
	Obs->bTrackTimeFlag = item.CS_TT_W3_SNR >> 15 & 0x1; //bit15,1 set track time is bigger than 25.5s
	int temp = item.CS_TT_W3_SNR >> 16 & 0xff;
	Obs->dTrackTime = (item.CS_TT_W3_SNR >> 16 & 0xff)*0.1;  //bit16-23
	Obs->nCycleSlip = item.CS_TT_W3_SNR >> 24 & 0xff; //bit24-31,roll-over 255

	Obs->bPhaseValid = item.P7_Doppler_FL & 0x1; //bit1
	Obs->dDop = (item.P7_Doppler_FL >> 1 & 0x7fffff) / 512.0; //bit1-23
	if (!(item.P7_Doppler_FL >> 24 & 0x1)) //bit24:1Ϊ����0Ϊ�����Ƿ�֮��
	{
		Obs->dDop = Obs->dDop*(-1.0);
	}

	Obs->nPhase = (item.P7_Doppler_FL >> 25 & 0x7f) << 16;     //bit25-31,upper 7-bits phase
	Obs->nPhase |= (item.CodeAndPhase >> 16 & 0xffff);   //bit16-31,lower 16-bits phase

	Obs->dPhase = (item.P7_Doppler_FL >> 25 & 0x7f) * 64;
	Obs->dPhase += (item.CodeAndPhase >> 16 & 0xffff) / 1024.0; //lower 23-bits phase

	Obs->nPsr = item.CodeAndPhase & 0xffff;  //lower 16-bits pseudo-range
	Obs->dPsr = (item.CodeAndPhase & 0xffff) / 256.0;
}

Hemis_MeasBlock GetBlockData(const Hemis_MeasBlock *block, int Id, int nSignalType)
{
	Hemis_MeasBlock BData;

	BData.dPsr = block->dPsr;
	BData.dPhase = block->dPhase;
	BData.dSNR = block->dSNR;
	BData.dDop = block->dDop;
	BData.nSignalType = nSignalType;

	BYTE bMask = 0x7;
	if (Id <= 32 && nSignalType == GPS_C2P)
	{
		bMask = 0x3;
	}

	//  [2021/7/21 GaoWei]
	if ((block->nSlipWarn & bMask))
	{
		BData.nLLI |= 0x1;
	}


	//�޸ģ�����λ��Чʱ�����ð�������ʶ
	if (!block->bPhaseValid)
	{
		BData.nLLI |= 0x1;
	}

	return BData;
}

/* �ο���λ�ṩ��λ��������λ��23λ����Ϻ������λ��ο���λ��ֵ������4196 */
double AdjustPhase(double dFinePhase, double dTotalPhase)
{
	double dResult = 0, dNewPhase;

	ULONG64 nTem = dTotalPhase * 1024;
	UINT nLower23 = ((UINT)(dFinePhase * 1024)) & 0x7fffff;

	nTem = (nTem & 0xffffffffff800000) | (nLower23);
	dNewPhase = nTem / 1024.0;  //�޸���λ[2014/12/31 GaoWei]


	////���������λ�Ͳο���λ�Ĳ�ֵ��ʹ֮С��4096���������ֵ��Ϊʵ����λ
	if (fabs(dNewPhase - dTotalPhase) < 4096)
	{
		dResult = dNewPhase;
	}
	else
	{
		double dDiff = dNewPhase - dTotalPhase;
		int N = 0;
		if (dDiff < 0)
		{
			N = (int)(dDiff / 8192 - 0.5); //�������������
		}
		else
		{
			N = (int)(dDiff / 8192 + 0.5);
		}

		dResult = dNewPhase - N * 8192.0;
	}

	/*[2018/8/2 Amanda]*/
	if (fabs(dResult) > 4E8)
	{
		//WriteFailLog("%d dResult %lf", __LINE__, dResult);
		dResult = 0;
	}

	return dResult;
}

double GetURA(int nURA)
{
	double dResult = 0.0;

	if (nURA < 6)
	{
		dResult = pow(2.0, 1 + nURA * 0.5);
	}
	else if (nURA < 15)
	{
		dResult = pow(2.0, nURA - 2);
	}
	else
	{
		dResult = 68888888.0;
	}

	return dResult;
}

int SatExistOrNot(int nSystem,int svId, obs_t *obs)
{
    int sat = satno(nSystem, svId);
	int i = 0;

	for (; i < obs->n && i < MAXOBS; i++)
	{
		if (obs->data[i].sat == sat && sat > 0)
        {
			break;
		}
	}

	return i;
}

extern int readGnssObs(unsigned char* buff, int nStart, obs_t *obs)
{
	if (buff == NULL || nStart < 0)
	{
		return 0;
	}

	SBinaryMsg16 item;

	memcpy(&item.m_dTow, buff + nStart, sizeof(item.m_dTow));
	nStart += 8;
	memcpy(&item.m_wWeek, buff + nStart, sizeof(item.m_wWeek));
	nStart += 2;
	nStart += 2;

	double dt = 0;

	gtime_t time = gpst2time(item.m_wWeek, item.m_dTow);

	if (obs->n > 0 && fabs(dt=timediff(time, obs->data[0].time))> 0.001)
	{
        obs->n = 0;
        obs->nmax = 0;
        memset(obs->data, 0, MAXOBS*sizeof(obsd_t));
	}

	/*total pages: bit 16--21;page num: bit 22--27*/
	memcpy(&item.m_uPageCount, buff + nStart, sizeof(item.m_uPageCount));
	nStart += 4;

	int iPagesTotal = (item.m_uPageCount >> 16 & 0x3F);
	int iPageNumber = (item.m_uPageCount >> 22 & 0x3F);

	memcpy(&item.m_uAllSignalsIncluded_01, buff + nStart, sizeof(item.m_uAllSignalsIncluded_01));
	nStart += 4;

	memcpy(&item.m_uAllSignalsIncluded_02, buff + nStart, sizeof(item.m_uAllSignalsIncluded_02));
	nStart += 4;

	memcpy(item.m_asObs, buff + nStart, CHANNELS_gen * 12);
	nStart += CHANNELS_gen * 12;
	memcpy(item.m_aulCodeMSBsPRN, buff + nStart, CHANNELS_gen * 4);
	nStart += CHANNELS_gen * 4;
	memcpy(item.m_awChanSignalSYS, buff + nStart, CHANNELS_gen * 2);
	nStart += CHANNELS_gen * 2;

	for (int i = 0; i < CHANNELS_gen; i++)
	{
		BYTE nSVID = item.m_aulCodeMSBsPRN[i] & 0xFF;
		BYTE nSystem = item.m_awChanSignalSYS[i] & 0xF;
        int sys = SYS_NONE;

		if (nSVID <= 0)
		{
			continue;
		}

		if (nSystem == 0)
		{
			if (nSVID >= SBAS_BASENO_INTERNAL2_LOWER &&
				nSVID <= SBAS_BASENO_INTERNAL2_UPPER)
			{
				//nSVID -= SBAS_BASENO_INTERNAL2;
				nSystem = SBS_SYSTEM;
				sys = SYS_SBS;
			}
			else if (nSVID >= SBAS_BASENO_INTERNAL1_LOWER &&
				nSVID <= SBAS_BASENO_INTERNAL1_UPPER)
			{
				nSystem = SBS_SYSTEM;
				//nSVID -= SBAS_BASENO_INTERNAL1;
				sys = SYS_SBS;
			}
			else
			{
				nSystem = GPS_SYSTEM;
				sys = SYS_GPS;
			}
		}
		else if (nSystem == 1)
		{
			nSystem = GLO_SYSTEM;
			sys = SYS_GLO;
		}
		else if (nSystem == 2)
		{
			nSystem = GAL_SYSTEM;
			sys = SYS_GAL;
		}
		else if (nSystem == 3)
		{
			nSystem = CMP_SYSTEM;
			sys = SYS_CMP;
		}
		else if (nSystem == 4)
		{
			//nSVID -= QZSS_BASENO;
			nSystem = QZS_SYSTEM;
			sys = SYS_QZS;
		}
		else if (nSystem == 5)
		{
			nSystem = NAVIC_SYSTEM;
			sys = SYS_IRN;
			continue;
		}
		else
		{
			nSystem = OTHER_SYSTEM;
            sys = SYS_NONE;
			continue;
		}

		double dRoughPsr = (item.m_aulCodeMSBsPRN[i] >> 13 & 0x7FFFF)*256.0; /* α���19λ */
		if (fabs(dRoughPsr) < 1E-6)
		{
			continue;
		}

		int nSignalType = item.m_awChanSignalSYS[i] >> 4 & 0xF;    /* ԭʼ�ź�id */
		BYTE bPcode = item.m_awChanSignalSYS[i] >> 13 & 0x1;  /* glonass�Ƿ�Ϊp�� */

		int codeType = 0;
		int nL = UnifySignalType(nSystem, bPcode, &nSignalType, &codeType);      /* ת��Ϊͳһ���ź�id */

		if (nSignalType < 0 || codeType <= 0 || nL >=(NFREQ+NEXOBS)) //[2021/08/11]
		{
			continue;
		}

		SHORT nFreq = item.m_awChanSignalSYS[i] >> 8 & 0x1F - 7;	   /* glonass����Ƶ�� */
		if (nSystem == GLO_SYSTEM && nSVID <= GLO_MAX_NO)
		//if (nSystem == SYS_GLO && nSVID <= GLO_MAX_NO)
		{
			nFreq = g_acFreqChan[nSVID];
		}

		double lam = GetWaveLength(nSystem, nSignalType, nFreq);     /* ���ǲ��� */

		if (fabs(lam) < 1E-6)
		{
			/*CString strDebug;
			strDebug.Format("sys = %4d,sig = %4d,fre = %4d",nSystem,nSignalType,nFreq);
			AfxMessageBox(strDebug);*/
			continue;
		}

        Hemis_MeasBlock block;
        memset(&block, 0, sizeof(block));
		GetObsValue(nSystem, item.m_asObs[i], nSignalType, &block);
		block.dPsr += dRoughPsr;
		block.dPhase = AdjustPhase(block.dPhase, block.dPsr / lam);

		// index
		int Index = SatExistOrNot(sys, nSVID, obs);
		if (Index >= MAXOBS) continue;

		if (Index==obs->n) /* new satellite */
		{
			//if (nSystem == SYS_GLO)
			if (nSystem == GLO_SYSTEM)
			{
				//obs->data[nIndex].nFreChan = nFreq;
			}
			
			obs->data[Index].sat = satno(sys, nSVID);//nSVID;
			//obs->data[nIndex].system = nSystem;

			if (obs->data[Index].P[nL] == 0.0)
			{
				obs->data[Index].P[nL] = block.dPsr;
			}

			if (obs->data[Index].L[nL] == 0.0)
			{
				//obs->data[Index].lam[nL] = lam;
				obs->data[Index].L[nL] = block.dPhase;
				obs->data[Index].LLI[nL] = block.nLLI;
				obs->data[Index].D[nL] = block.dDop;
			}

			if (obs->data[Index].SNR[nL] == 0.0)
			{
				obs->data[Index].SNR[nL] = block.dSNR / SNR_UNIT;
			}
			obs->data[Index].code[nL] = codeType;
			obs->data[Index].time = gpst2time(item.m_wWeek, item.m_dTow);
			++obs->n;
		}
		else
		{
			//if (nSystem == GLO_SYSTEM)
			//{
			//	obs->data[Index].nFreChan = nFreq;
			//}
			if (obs->data[Index].P[nL] == 0.0)
			{
				obs->data[Index].P[nL] = block.dPsr;
			}

			if (obs->data[Index].L[nL] == 0.0)
			{
				//obs->data[Index].lam[nL] = lam;
				obs->data[Index].L[nL] = block.dPhase;
				obs->data[Index].LLI[nL] = block.nLLI;
				obs->data[Index].D[nL] = block.dDop;
			}
			if (obs->data[Index].SNR[nL] == 0.0)
			{
				obs->data[Index].SNR[nL] = block.dSNR / SNR_UNIT;
			}
			obs->data[Index].code[nL] = codeType;
			obs->data[Index].time = gpst2time(item.m_wWeek, item.m_dTow);
		}
		
		//printf("%14.3f %14.3f %14.3f %14.3f\r\n",block.dPsr, block.dPhase,block.dDop,block.dSNR );
	}

	return iPagesTotal > 0 && (iPagesTotal - 1) == iPageNumber;
}

static int readGpsEph(unsigned char* buff, int nStart, nav_t *nav)
{
	if (buff == NULL)
	{
		return 0;
	}

	nStart = 8;

	eph_t eph;
	memcpy(&eph.sat, buff + nStart, 2);
	nStart += 4;

	double tow = 0.0;
	memcpy(&tow, buff + nStart, sizeof(tow));
	tow *= 6;
	nStart += 4;

	ULONG SF1words[10], SF2words[10], SF3words[10];
	memcpy(SF1words, buff + nStart, 40);
	nStart += 40;
	memcpy(SF2words, buff + nStart, 40);
	nStart += 40;
	memcpy(SF3words, buff + nStart, 40);
	nStart += 40;

	//SubFrame one,10 ULONG
	//item.week = (SF1words[2]>>20&0x3ff)+1024; //10-bits
	eph.week = (SF1words[2] >> 20 & 0x3ff);

	eph.code = SF1words[2] >> 18 & 0x3; //2-bits
	int nURA = SF1words[2] >> 14 & 0xf;       //4-bits
	eph.sva = GetURA(nURA); //[2014/12/27 GaoWei]

	eph.svh = SF1words[2] >> 8 & 0x3f;    //6-bits
	int nIODC = SF1words[2] >> 6 & 0x3;       //2-bits

	eph.flag = SF1words[3] >> 29 & 0x1;  //1-bit

	signed char nTGD = SF1words[6] >> 6 & 0xff;      //8-bits
	eph.tgd[1] = nTGD * pow(2.0, -31);

	eph.iodc = (nIODC << 8) | (SF1words[7] >> 22 & 0xff);
	eph.toc.time = (SF1words[7] >> 6 & 0xffff) * 16;  //16-bits

	signed char nAF2 = SF1words[8] >> 22 & 0xff;   //8-bits
	eph.f2 = nAF2 * pow(2.0, -55);

	SHORT nAF1 = SF1words[8] >> 6 & 0xffff;
	eph.f1 = (nAF1)*pow(2.0, -43);  //16-bits

	int nAF0 = ((int)((SF1words[9] >> 8 & 0x3fffff) << 10)) >> 10; //22-bits
	eph.f0 = (nAF0)*pow(2.0, -31);


	//SubFrame two
	eph.iode = SF2words[2] >> 22 & 0xff;
	SHORT nCRS = SF2words[2] >> 6 & 0xffff;
	eph.crs = nCRS * pow(2.0, -5);

	SHORT nDeltaN = SF2words[3] >> 14 & 0xffff;
	eph.deln = nDeltaN * pow(2.0, -43)*PI;

	int nM0 = ((SF2words[3] >> 6 & 0xff) << 24) | (SF2words[4] >> 6 & 0xffffff);
	eph.M0 = nM0 * pow(2.0, -31)*PI;

	SHORT nCUC = SF2words[5] >> 14 & 0xffff;
	eph.cuc = nCUC * pow(2.0, -29);

	int nEcc = ((SF2words[5] >> 6 & 0xff) << 24) | (SF2words[6] >> 6 & 0xffffff);
	eph.e = nEcc * pow(2.0, -33);

	SHORT nCUS = SF2words[7] >> 14 & 0xffff;
	eph.cus = nCUS * pow(2.0, -29);

	UINT nSqrtA = ((SF2words[7] >> 6 & 0xff) << 24) | (SF2words[8] >> 6 & 0xffffff);
	eph.A = nSqrtA * pow(2.0, -19);

	eph.toe.time = (SF2words[9] >> 14 & 0xffff) * 16;
	eph.fit = SF2words[9] >> 13 & 0x1;
	if (eph.fit == 0)
	{
		eph.fit = 4;
	}
	else
	{
		eph.fit = 6;
	}//[2014/12/27 GaoWei]

	//item.nAODO=SF2words[9]>>8&0x1f;


	//SubFrame three
	SHORT nCIC = SF3words[2] >> 14 & 0xffff;
	eph.cic = nCIC * pow(2.0, -29);

	int nOmega0 = ((SF3words[2] >> 6 & 0xff) << 24) | (SF3words[3] >> 6 & 0xffffff);
	eph.OMG0 = nOmega0 * pow(2.0, -31)*PI;

	SHORT nCIS = SF3words[4] >> 14 & 0xffff;
	eph.cis = nCIS * pow(2.0, -29);

	int nI0 = ((SF3words[4] >> 6 & 0xff) << 24) | (SF3words[5] >> 6 & 0xffffff);
	eph.i0 = nI0 * pow(2.0, -31)*PI;

	SHORT nCRC = SF3words[6] >> 14 & 0xffff;
	eph.crc = nCRC * pow(2.0, -5);

	int nOmega = ((SF3words[6] >> 6 & 0xff) << 24) | (SF3words[7] >> 6 & 0xffffff);
	eph.omg = nOmega * pow(2.0, -31)*PI;

	int nOmegaDot = ((int)((SF3words[8] >> 6 & 0xffffff) << 8)) >> 8;
	eph.OMGd = nOmegaDot * pow(2.0, -43)*PI;

	eph.iode = SF3words[9] >> 22 & 0xff;

	SHORT nIDot = ((SHORT)((SF3words[9] >> 8 & 0x3fff) << 2)) >> 2;
	eph.idot = nIDot * pow(2.0, -43)*PI;

	// time convert

	addEph(nav, &eph);
	return 2;
}

static int readCmpEph(unsigned char* buff, int nStart, nav_t *nav)
{
	if (buff == NULL)
	{
		return 0;
	}

	nStart = 8;

	eph_t eph;
	memcpy(&eph.sat, buff + nStart, 2);
	nStart += 2;

	nStart += 2;
	nStart += 6;
	double tow = 0.0;
	memcpy(&tow, buff + nStart, sizeof(tow));
	nStart += 4;
	uint32_t toc = 0.0;
	memcpy(&toc, buff + nStart, sizeof(toc));
	eph.toc.time = toc * 8;
	nStart += 4;

	memcpy(&eph.f0, buff + nStart, sizeof(eph.f0));
	eph.f0 *= pow(2.0, -31 - 2);
	nStart += 4;

	memcpy(&eph.f1, buff + nStart, sizeof(eph.f1));
	eph.f1 *= pow(2.0, -43 - 7);
	nStart += 4;

	memcpy(&eph.f2, buff + nStart, sizeof(eph.f2));
	eph.f2 *= pow(2.0, -55);
	nStart += 4;

	uint32_t toe = 0.0;
	memcpy(&toe, buff + nStart, sizeof(toe));
	eph.toe.time = toe * 8;
	nStart += 4;

	memcpy(&eph.A, buff + nStart, sizeof(eph.A));
	eph.A = eph.A * pow(2.0, -19);
	nStart += 4;

	memcpy(&eph.e, buff + nStart, sizeof(eph.e));
	eph.e = eph.e * pow(2.0, -33);
	nStart += 4;

	memcpy(&eph.omg, buff + nStart, sizeof(eph.omg));
	eph.omg = eph.omg *pow(2.0, -31)*PI;
	nStart += 4;

	memcpy(&eph.deln, buff + nStart, sizeof(eph.deln));
	eph.deln = eph.deln *pow(2.0, -43)*PI;
	nStart += 4;

	memcpy(&eph.M0, buff + nStart, sizeof(eph.M0));
	eph.M0 = eph.M0 *pow(2.0, -31)*PI;
	nStart += 4;

	memcpy(&eph.OMG0, buff + nStart, sizeof(eph.OMG0));
	eph.OMG0 = eph.OMG0 *pow(2.0, -31)*PI;
	nStart += 4;

	memcpy(&eph.OMGd, buff + nStart, sizeof(eph.OMGd));
	eph.OMGd = eph.OMGd *pow(2.0, -43)*PI;
	nStart += 4;

	memcpy(&eph.i0, buff + nStart, sizeof(eph.i0));
	eph.i0 = eph.i0 *pow(2.0, -31)*PI;
	nStart += 4;

	memcpy(&eph.idot, buff + nStart, sizeof(eph.idot));
	eph.idot = eph.idot *pow(2.0, -43)*PI;
	nStart += 4;

	memcpy(&eph.cuc, buff + nStart, sizeof(eph.cuc));
	eph.cuc = eph.cuc *pow(2.0, -29 - 2);
	nStart += 4;

	memcpy(&eph.cus, buff + nStart, sizeof(eph.cus));
	eph.cus = eph.cus *pow(2.0, -29 - 2);
	nStart += 4;

	memcpy(&eph.crc, buff + nStart, sizeof(eph.crc));
	eph.crc = eph.crc *pow(2.0, -6);
	nStart += 4;

	memcpy(&eph.crs, buff + nStart, sizeof(eph.crs));
	eph.crs = eph.crs *pow(2.0, -5 - 1);
	nStart += 4;

	memcpy(&eph.cic, buff + nStart, sizeof(eph.cic));
	eph.cic = eph.cic *pow(2.0, -29 - 2);
	nStart += 4;

	memcpy(&eph.cis, buff + nStart, sizeof(eph.cis));
	eph.cis = eph.cis *pow(2.0, -29 - 2);
	nStart += 4;

	ULONG nTem = 0;
	memcpy(&nTem, buff + nStart, sizeof(nTem));
	nStart += 4;

	SHORT nData = nTem & 0x3ff;
	nData = ((SHORT)(nData << 6)) >> 6;
	eph.tgd[1] = nData * pow(10.0, -10);

	nData = nTem >> 10 & 0x3ff;
	nData = ((SHORT)(nData << 6)) >> 6;
	eph.tgd[2] = nData * pow(10.0, -10); //in unit of ns

	memcpy(&eph.week, buff + nStart, sizeof(eph.week));
	nStart += 4;

	nStart += 8;

	ULONG iTem = 0;
	memcpy(&iTem, buff + nStart, sizeof(iTem));
	nStart += 4;

	eph.iode = (uint16_t)(iTem & 0x1f);    //bit0-4
	int nURA = (uint16_t)((iTem >> 5) & 0xf);   //bit5-8
	eph.sva = GetURA(nURA);
	eph.iodc = (uint16_t)((iTem >> 9) & 0x1f); //bit9-13

	eph.svh = iTem >> 14 & 0x1; //bit14

	nStart += 16;  //4��spare

	addEph(nav, &eph);

	return 2;
}

static int readGalileoEph(unsigned char* buff, int nStart, nav_t *nav)
{
	static unsigned const_E1B_Source = 1;
	static unsigned const_E5B_Source = 2;
	static unsigned const_E5A_Source = 3;

	if (buff == NULL)
	{
		return 0;
	}

	nStart = 8;

	eph_t eph;
	memcpy(&eph.sat, buff + nStart, 2);
	nStart += 2;
	nStart += 2;

	ULONG tow = 0;
	memcpy(&tow, buff + nStart, sizeof(tow));
	nStart += 4;

	ULONG SF1words[10] = { 0 };
	ULONG SF2words[10] = { 0 };
	ULONG SF3words[10] = { 0 }; /* 30 wrods */
	memcpy(SF1words, buff + nStart, 40);
	nStart += 40;
	memcpy(SF2words, buff + nStart, 40);
	nStart += 40;
	memcpy(SF3words, buff + nStart, 40);
	nStart += 40;

	double gpssec = (SF1words[0] & G20BITS)*1.0; /* 20 bits */

	BYTE nSrc = SF1words[0] >> 20 & G2BITS;

	eph.toc.time = (SF1words[1] & G14BITS)*60.0;

	eph.f0 = getSignData(SF1words[2] & G31BITS, 31, TRUE)*pow(2.0, -34);
	eph.f1 = getSignData(SF1words[3] & G21BITS, 21, TRUE)*pow(2.0, -46);
	eph.f2 = getSignData(SF1words[4] & G6BITS, 6, TRUE)*pow(2.0, -59);

	eph.toe.time = (SF1words[5] & G14BITS)*60.0;

	eph.A = SF1words[6] * pow(2.0, -19);

	eph.e = SF1words[7] * pow(2.0, -33);

	eph.omg = getSignData(SF1words[8], 32, TRUE)*pow(2.0, -31)*PI;

	eph.deln = getSignData(SF1words[9] & G16BITS, 16, TRUE)*pow(2.0, -43)*PI;

	eph.M0 = getSignData(SF2words[0], 32, TRUE)*pow(2.0, -31)*PI;

	eph.OMG0 = getSignData(SF2words[1], 32, TRUE)*pow(2.0, -31)*PI;

	eph.OMGd = getSignData(SF2words[2] & G24BITS, 24, TRUE)*pow(2.0, -43)*PI;

	eph.i0 = getSignData(SF2words[3], 32, TRUE)*pow(2.0, -31)*PI;

	eph.idot = getSignData(SF2words[4] & G14BITS, 14, TRUE)*pow(2.0, -43)*PI;

	eph.cuc = getSignData(SF2words[5] & G16BITS, 16, TRUE)*pow(2.0, -29);
	eph.cus = getSignData(SF2words[6] & G16BITS, 16, TRUE)*pow(2.0, -29);

	eph.crc = getSignData(SF2words[7] & G16BITS, 16, TRUE)*pow(2.0, -5);
	eph.crs = getSignData(SF2words[8] & G16BITS, 16, TRUE)*pow(2.0, -5);

	eph.cic = getSignData(SF2words[9] & G16BITS, 16, TRUE)*pow(2.0, -29);
	eph.cis = getSignData(SF3words[0] & G16BITS, 16, TRUE)*pow(2.0, -29);

	eph.week = SF3words[1] & G12BITS;  /* 12 bits */
	eph.iode = SF3words[2] & G10BITS;  /* 10 bits */

	double ai0 = (SF3words[3] & G11BITS)*pow(2.0, -2);
	double ai1 = getSignData(SF3words[3] >> 11 & G11BITS, 11, TRUE)*pow(2.0, -8);


	BYTE SF[5] = { 0 };
	for (int i = 0; i < 5; ++i)
	{
		SF[i] = SF3words[4] >> i & 0x1;
	}/* 5 bits for flag */
	double ai2 = getSignData(SF3words[4] >> 5 & G14BITS, 14, TRUE)*pow(2.0, -15);

	eph.tgd[2] = getSignData(SF3words[5] & G10BITS, 10, TRUE)*pow(2.0, -32);
	eph.tgd[1] = getSignData(SF3words[5] >> 10 & G10BITS, 10, TRUE)*pow(2.0, -32);//�޸�,��tgd1��tgd2����[2019/06/28]


	BYTE E1BDVS = SF3words[6] & 0x1;
	BYTE E5BDVS = SF3words[6] >> 1 & 0x1;
	BYTE E1BH = SF3words[6] >> 2 & 0x3;
	BYTE E5BH = SF3words[6] >> 4 & 0x3;
	unsigned char SISA = (SF3words[6] >> 6) & 0xFF;
	eph.sva = GetURAFromSISA(SISA);


	//BYTE E5BH = SF3words[6] >> 8 & G2BITS;  // 0 for invalid
	//BYTE E1BH = SF3words[6] >> 10 & G2BITS;
	//BYTE E5BDVS = SF3words[6] >> 12 & 0x1;  // 0 for invalid
	//BYTE E1BDVS = SF3words[6] >> 13 & 0x1;

	SHORT nDataSource = 0;
	if (nSrc == const_E1B_Source)
	{
		nDataSource |= eGALILEO_SRC_E1B;         // E1
		nDataSource |= eGALILEO_CLK_E1_E5B;     //bit9:E1/E5B
	}/* E1BC */
	else if (nSrc == const_E5B_Source)
	{
		nDataSource |= eGALILEO_SRC_E5B;        // E5B
		nDataSource |= eGALILEO_CLK_E1_E5B;
	}/* E5B */
	else if (nSrc == const_E5A_Source)
	{
		nDataSource |= eGALILEO_SRC_E5A;         // E5A
		nDataSource |= eGALILEO_CLK_E1_E5A;    // bit8:E1/E5A
	}
	double dataSrc = nDataSource * 1.0;

	BYTE E5AH = 0;
	BYTE E5ADVS = 0;
	if (SF3words[7] & 0x1)
	{
		double toc = (SF3words[7] >> 1 & G14BITS)*60.0;
		double sisa = SF3words[7] >> 15 & G8BITS;

		E5AH = SF3words[7] >> 23 & G2BITS;
		E5ADVS = SF3words[7] >> 25 & 0x1;

		double af0 = getSignData(SF3words[8] & G31BITS, 31, TRUE)*pow(2.0, -34);
		double af1 = getSignData(SF3words[9] & G21BITS, 21, TRUE)*pow(2.0, -46);
		double af2 = getSignData(SF3words[9] >> 21 & G6BITS, 6, TRUE)*pow(2.0, -59);
	}/* FNAV_DATA */

	USHORT Health = 0;
	if (E1BDVS)
	{
		Health |= eGALILEO_HEALTH_E1B_DV;   // ��ȷ��������λ��Ч���Ƿ���Ҫȡ��?
	}
	if (E1BH)
	{
		Health |= (E1BH << eGALILEO_HEALTH_E1B_HS);
	}
	if (E5BDVS)
	{
		Health |= eGALILEO_HEALTH_E5B_DV;
	}
	if (E5BH)
	{
		Health |= (E5BH << eGALILEO_HEALTH_E5B_HS);
	}
	if (E5ADVS)
	{
		Health |= eGALILEO_HEALTH_E5A_DV;
	}
	if (E5AH)
	{
		Health |= (E5AH << eGALILEO_HEALTH_E5A_HS);
	}
	eph.svh = Health;

	addEph(nav, &eph);
	return 2;
}

void GetCalendarTime(int N4, int Nt, double sec, GPSTime *timeMsg)
{
	int J = 0;
	int nDay = 0;
	if (Nt <= 366)   //[2015/1/7 GaoWei]��������������ڣ���ȡ�Ⱥ�
	{
		J = 0;
		nDay = Nt;
	}
	else if (Nt <= 731)
	{
		J = 1;
		nDay = Nt - 366;
	}
	else if (Nt <= 1096)
	{
		J = 2;
		nDay = Nt - 731;
	}
	else
	{
		J = 3;
		nDay = Nt - 1096;
	}

	timeMsg->year = 1996 + 4 * (N4 - 1) + J;


	int MonthDayTab[2][13] = {
		{0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
		{0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31} };

	int nIsLeapYear = 0;

	if (J == 0)
	{
		nIsLeapYear = 1;
	}

	int daycount = 0;
	for (int i = 1; i < 13; i++)
	{
		daycount += MonthDayTab[nIsLeapYear][i];

		if (nDay <= daycount)
		{
			timeMsg->month = i;

			timeMsg->day = nDay - (daycount - MonthDayTab[nIsLeapYear][i]);

			break;
		}
	}

	timeMsg->hour = (int)(sec / 3600.0);
	timeMsg->min = (int)((sec - 3600 * timeMsg->hour) / 60);
	timeMsg->second = sec - timeMsg->hour * 3600 - timeMsg->min * 60;
}

int readGlonassString(ULONG asStrings[][3], int size, geph_t *item)
{
	int nTem = 0;
	int N4 = 0, Nt = 0;
	int P = 0, P1 = 0, P2 = 0, P3 = 0, P4 = 0, M = 0;
	double tk = 0.0;
	double tb = 0.0;

	for (int i = 0; i < size; ++i)
	{
		nTem = asStrings[i][0] >> 27 & 0xf; //super-frame number

		if (nTem == 1) //GLONASS_String 1
		{
			nTem = asStrings[i][0] >> 23 & 0x3; //Word P1
			P1 = nTem;

			nTem = asStrings[i][0] >> 11 & 0xfff;
			tk = (nTem >> 7 & 0x1f)*3600.0 + (nTem >> 1 & 0x3f)*60.0 + ((nTem & 0x1))*30.0 - 10800;

			nTem = ((asStrings[i][0] & 0x7ff) << 13) | (asStrings[i][1] >> 19 & 0x1fff);
			item->vel[0] = nBits2Double(nTem, 24, -20, FALSE);

			nTem = asStrings[i][1] >> 14 & 0x1f;
			item->acc[0] = nBits2Double(nTem, 5, -30, FALSE);

			nTem = ((asStrings[i][1] & 0x3fff) << 13) | (asStrings[i][2] >> 19 & 0x1fff);
			item->pos[0] = nBits2Double(nTem, 27, -11, TRUE);
		}
		else if (nTem == 2)//GLONASS_String 2
		{
			nTem = asStrings[i][0] >> 24 & 0x7;
			item->svh = nTem >> 2 & 0x1;  //ֻȡ���λ����2λ������

			P2 = asStrings[i][0] >> 25 & 0x1;

			tb = asStrings[i][0] >> 16 & 0x7f;
			tb *= 15 * 60;
			tb -= 10800;
			//item.tk = item.tb;

			nTem = ((asStrings[i][0] & 0x7ff) << 13) | (asStrings[i][1] >> 19 & 0x1fff);
			item->vel[1] = nBits2Double(nTem, 24, -20, FALSE);

			nTem = asStrings[i][1] >> 14 & 0x1f;
			item->acc[1] = nBits2Double(nTem, 5, -30, FALSE);

			nTem = ((asStrings[i][1] & 0x3fff) << 13) | (asStrings[i][2] >> 19 & 0x1fff);
			item->pos[1] = nBits2Double(nTem, 27, -11, TRUE);
		}
		else if (nTem == 3)//GLONASS_String 3
		{
			P3 = asStrings[i][0] >> 26 & 0x1;

			nTem = asStrings[i][0] >> 15 & 0x7ff;
			item->gamn = nBits2Double(nTem, 11, -40, FALSE);

			P = asStrings[i][0] >> 12 & 0x3;

			item->svh = asStrings[i][0] >> 11 & 0x1;

			nTem = ((asStrings[i][0] & 0x7ff) << 13) | (asStrings[i][1] >> 19 & 0x1fff);
			item->vel[2] = nBits2Double(nTem, 24, -20, FALSE);

			nTem = asStrings[i][1] >> 14 & 0x1f;
			item->acc[2] = nBits2Double(nTem, 5, -30, FALSE);

			nTem = ((asStrings[i][1] & 0x3fff) << 13) | (asStrings[i][2] >> 19 & 0x1fff);
			item->pos[2] = nBits2Double(nTem, 27, -11, TRUE);
		}
		else if (nTem == 4)//GLONASS_String 4
		{
			nTem = asStrings[i][0] >> 5 & 0x3fffff;
			item->taun = nBits2Double(nTem, 22, -30, FALSE);

			nTem = asStrings[i][0] & 0x1f; //delta-TauN
			double deltaTaoN = nBits2Double(nTem, 5, -30, FALSE);
			item->dtaun = deltaTaoN;

			nTem = (asStrings[i][1] >> 27 & 0x1f);
			item->age = nTem; /* En */

			P4 = asStrings[i][1] >> 12 & 0x1;

			int Ft = asStrings[i][1] >> 8 & 0xf; //URA

			item->sva = Ft;

			Nt = ((asStrings[i][1] & 0x1f) << 6) | (asStrings[i][2] >> 26 & 0x3f);  //date

			int n = asStrings[i][2] >> 21 & 0x1f;

			M = asStrings[i][2] >> 19 & 0x3;
		}
		else if (nTem == 5)//GLONASS_String 5
		{
			int Na = asStrings[i][0] >> 16 & 0x7ff;
			N4 = asStrings[i][1] >> 10 & 0xf;

			nTem = ((asStrings[i][1] & G10BITS) << 12) | (asStrings[i][2] >> 20 & G12BITS);

			if (asStrings[i][2] >> 19 & G1BITS)
			{
				item->svh = 1.0;
			}/* ln */
		}
		double dStatusflag = P | P1 << 1 | P2 << 3 | P3 << 4 || P4 << 5 || M << 6;
	}

	/*����ʱ��Ϊ��ֵ[2017/4/14 Amanda]*/
	if (tb < 0)
	{
		tb += 86400;
		Nt -= 1;
	}

	if (tk < 0)
	{
		tk += 86400.0;
	}
	GPSTime time;
	GetCalendarTime(N4, Nt, tb, &time);

	return TRUE;
}

static int readGlonassEph(unsigned char* buff, int nStart, nav_t *nav)
{
	if (buff == NULL)
	{
		return FALSE;
	}

	nStart = 8;

	geph_t eph;
	eph.sat = buff[nStart];
	nStart += 1;

	eph.frq = buff[nStart] - 8;
	nStart += 1;
	nStart += 2;
	double GPSSec = 0.0;
	memcpy(&GPSSec, buff + nStart, sizeof(GPSSec));
	nStart += 4;

	ULONG asStrings[5][3] = { 0 };
	for (int i = 0; i < 5; i++)
	{
		memcpy(asStrings[i], buff + nStart, 12);
		nStart += 12;
	}

	readGlonassString(asStrings, 5, &eph);

	addGeph(nav, &eph);
	return 2;
}

extern int readMsg1(unsigned char* buff, int nStart, sta_t *sta)
{
	if (buff == NULL)
	{
		return 0;
	}

	double lat, lon;
	float alt;

	memcpy(&lat, buff + 20, sizeof(lat));
	memcpy(&lon, buff + 28, sizeof(lon));
	memcpy(&alt, buff + 36, sizeof(alt));

	if (fabs(lat) < 1.0e-7 && fabs(lon) < 1.0e-7 && fabs(alt) < 1.0e-7)
	{
	}
	else
	{
		double blh[3] = { lat * D2R ,lon * D2R, (double)alt };
		double xyz[3] = { 0 };
		pos2ecef(blh, xyz);

		sta->pos[0] = xyz[0];
		sta->pos[1] = xyz[1];
		sta->pos[2] = xyz[2];
	}
	return 3;
}