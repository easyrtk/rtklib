#ifndef _RTCM_BUFF_H
#define _RTCM_BUFF_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "cmcc_aid.h"

#define MAX_RTCM_BUF_LEN 1200

typedef struct {        /* RTCM control struct type */
    int staid;          /* station id */
    int type;
    int subtype;
    int nbyte;          /* number of bytes in message buffer */ 
    int nbit;           /* number of bits in word buffer */ 
    int len;            /* message length (bytes) */
    unsigned char nsat; /* number of satellites */
    unsigned char nsig; /* number of signals */
    unsigned char ncel; /* number of cell */
    unsigned char sats[64];         /* satellites */
    unsigned char sigs[32];         /* signals */
    unsigned char cels[64];     /* cell mask */
    unsigned char buff[MAX_RTCM_BUF_LEN]; /* message buffer */
    unsigned short wk;
    char staname[5];
    char antdes[32];
    char antsno[32];
    char rectype[32];
    char recver[32];
    char recsno[32];
    double tow;
    double pos[3];
	int sync;
    int crc;
    int slen;
    int mark;
    unsigned char sys;         /* update satellite of ephemeris */
    unsigned char prn;
} rtcm_buff_t;

int input_rtcm3_type(rtcm_buff_t* rtcm, unsigned char data);

int decode_type1005_(unsigned char* buff, int len, int* staid, double* pos);
int decode_type1006_(unsigned char* buff, int len, int* staid, double* pos);
int update_type_1005_1006_pos(uint8_t* buff, int nbyte, double* p);
int decode_type1033_(uint8_t* buff, int len, char *staname, char* antdes, char* antsno, char* rectype, char* recver, char* recsno);

void setbitu_(unsigned char* buff, int pos, int len, unsigned int data);
unsigned int getbitu_(const unsigned char* buff, int pos, int len);
int getbits_(const unsigned char *buff, int pos, int len);

unsigned int crc24q_(const unsigned char* buff, int len);

void setbits_(uint8_t *buff, int pos, int len, int32_t data);
void set38bits_(uint8_t *buff, int pos, double value);

int rtcm_obs_type(int type);
int rtcm_eph_type(int type);

int encode_aid1 (uint8_t* buff, aid_sol_t* sol); /* rover sol */
int encode_aid2 (uint8_t* buff, aid_ppl_t* ppl); /* rover ppl */
int encode_aid5 (uint8_t* buff, int idx, int rcv, double ws, double* blh);
int encode_aidX1(uint8_t* buff, aid_sat_t* sat, int n, double ws, int sys, int sync); /* iono rms level */
int encode_aidX2(uint8_t* buff, aid_sat_t* sat, int n, double ws, int sys, int sync); /* full rms level */
int encode_aidX3(uint8_t* buff, aid_atm_t* atm, int n, double ws, int sys, int sync, int idx, int rcv); /* iono residual */
int encode_aidX4(uint8_t* buff, aid_atm_t* atm, int n, double ws, int sys, int sync, int idx, int rcv); /* full residual */

int decode_aid1 (uint8_t* buff, int nlen, aid_sol_t* sol); /* rover sol */
int decode_aid2 (uint8_t* buff, int nlen, aid_ppl_t* ppl); /* rover ppl */
int decode_aid5 (uint8_t* buff, int nlen, int*idx, int* rcv, double* ws, double* blh);
int decode_aidX1(uint8_t* buff, int nlen, aid_sat_t* sat, int* n, int max_sat, double* ws, int* sys, int* sync); /* iono rms level */
int decode_aidX2(uint8_t* buff, int nlen, aid_sat_t* sat, int* n, int max_sat, double* ws, int* sys, int* sync); /* full rms level */
int decode_aidX3(uint8_t* buff, int nlen, aid_atm_t* atm, int* n, int max_atm, double* ws, int* sys, int* sync, int* idx, int* rcv); /* iono residual */
int decode_aidX4(uint8_t* buff, int nlen, aid_atm_t* atm, int* n, int max_atm, double* ws, int* sys, int* sync, int* idx, int* rcv); /* full residual */


#ifdef __cplusplus
}
#endif

#endif
