#!/bin/tcsh
source ../job/RC_INIT.sh
../exec/JT251R $USER_ID $JRCODE 0 1
source ../job/CRC_LIBRARY.sh
ENDJOB:
