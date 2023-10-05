#ifndef _HEMISPHERE_H_
#define _HEMISPHERE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "rtklib.h"

extern int readGnssObs(unsigned char* buff, int nStart, obs_t *obs);
extern int readMsg1(unsigned char* buff, int nStart, sta_t* sta);


#ifdef __cplusplus
}
#endif
#endif