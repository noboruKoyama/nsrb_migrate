#!/bin/tcsh
source ../job/RC_INIT.sh
../exec/TSR100 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
ENDJOB:
