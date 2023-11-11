cmake_minimum_required(VERSION 3.16)
project(rnx2rtkp)

set(CMAKE_CXX_STANDARD 17)

add_definitions(-DTRACE -DENAGLO -DENAQZS -DENAGAL -DENACMP -DENAIRN -DNFREQ=7 -DNEXOBS=3)

include_directories(./)
include_directories(../../../src)
add_executable(rnx2rtkp
    rnx2rtkp.c
    ../../../src\ephemeris.c
    ../../../src\geoid.c
    ../../../src\ionex.c
    ../../../src\lambda.c
    ../../../src\options.c
    ../../../src\pntpos.c
    ../../../src\postpos.c
    ../../../src\ppp.c
    ../../../src\ppp_ar.c
    ../../../src\preceph.c
    ../../../src\rinex.c
    ../../../src\rtcm.c
    ../../../src\rtcm2.c
    ../../../src\rtcm3.c
    ../../../src\rtcm3e.c
    ../../../src\rtcm_buff.c
    ../../../src\rtkcmn.c
    ../../../src\rtkpos.c
    ../../../src\sbas.c
    ../../../src\solution.c
    ../../../src\tides.c
    ../../../src\rtcm_buff.h
    ../../../src\rtklib.h)

find_package(Threads REQUIRED)
target_link_libraries(rnx2rtkp Threads::Threads)
