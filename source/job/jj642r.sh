#!/bin/tcsh
source ../job/RC_INIT.sh
set ABORT=0;
../exec/JT635U $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
../exec/JT640R $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
ENDJOB:
