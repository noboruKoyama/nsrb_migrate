#!/bin/tcsh
source ../job/RC_INIT.sh
#/ASSIGN OEFN=JNIF,EFN=JNIF-RYO;
set ABORT=0;
../exec/JT055R-RYO $USER_ID $JRCODE 9 4
source ../job/CRC_LIBRARY.sh
#/ASSIGN OEFN=JNIF,RESOURCE=RELEASE;
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:
