#!/bin/tcsh
source ../job/RC_INIT.sh
#/ASSIGN OEFN=JOLSF,EFN=JOLSF-RYO;
#/ASSIGN OEFN=JOLJF,EFN=JOLJF-RYO;
#/ASSIGN OEFN=JSTR,EFN=JSTR-RYO;
#/ASSIGN OEFN=JNIF,EFN=JNIF-RYO;
#/ASSIGN OEFN=OKJF,EFN=OKJF-RYO;
#/ASSIGN OEFN=TDNWF,EFN=TDNWF-RYO;
#/ASSIGN OEFN=TDNNF,EFN=TDNNF-RYO;
#/ASSIGN OEFN=TDI-RDB,EFN=TDIF-RYO;
#/ASSIGN OEFN=TDNAF,EFN=TDNAF-RYO;
set ABORT=0;
../exec/JK041R-RYO $USER_ID $JRCODE 9
source ../job/CRC_LIBRARY.sh
#/ASSIGN OEFN=JOLSF,RESOURCE=RELEASE;
#/ASSIGN OEFN=JOLJF,RESOURCE=RELEASE;
#/ASSIGN OEFN=JSTR,RESOURCE=RELEASE;
#/ASSIGN OEFN=JNIF,RESOURCE=RELEASE;
#/ASSIGN OEFN=OKJF,RESOURCE=RELEASE;
#/ASSIGN OEFN=TDNWF,RESOURCE=RELEASE;
#/ASSIGN OEFN=TDNNF,RESOURCE=RELEASE;
#/ASSIGN OEFN=TDI-RDB,RESOURCE=RELEASE;
#/ASSIGN OEFN=TDNAF,RESOURCE=RELEASE;
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:
