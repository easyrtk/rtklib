#ifndef _HEMISPHERE_H_
#define _HEMISPHERE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "rtklib.h"

extern int readGnssObs(raw_t *raw);
extern int readMsg1   (raw_t *raw);
extern int readBDS2Eph(raw_t *raw);
extern int readBDS3Eph(raw_t *raw);
extern int readGalEph (raw_t *raw);

#ifdef __cplusplus
}
#endif
#endif