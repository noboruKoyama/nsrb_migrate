#!/bin/tcsh
source ../job/RC_INIT.sh
#/ASSIGN OEFN=JSTR,EFN=JSTR-RYO;
set ABORT=0;
../exec/JTN30L-RYO $USER_ID $JRCODE 3
source ../job/CRC_LIBRARY.sh
#/ASSIGN OEFN=JSTR,RESOURCE=RELEASE;
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:
