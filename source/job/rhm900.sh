#!/bin/tcsh
source ../job/RC_INIT.sh
#/ASSIGN OEFN=SNFF,EFN=SNFF-RYO;
#/ASSIGN OEFN=SINF,EFN=SINF-RYO;
set ABORT=0;
../exec/HMS900-RYO $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
#/ASSIGN OEFN=SNFF,RESOURCE=RELEASE;
#/ASSIGN OEFN=SINF,RESOURCE=RELEASE;
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:
