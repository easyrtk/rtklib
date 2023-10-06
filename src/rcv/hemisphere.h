#ifndef _HEMISPHERE_H_
#define _HEMISPHERE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "rtklib.h"

extern int readGnssObs(unsigned char* buff, int nStart, obs_t *obs, int* iPagesTotal, int* iPageNumber, int *nIndex);


#ifdef __cplusplus
}
#endif
#endif