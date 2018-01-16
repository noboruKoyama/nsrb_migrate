#!/bin/tcsh
source ../job/RC_INIT.sh
#/ASSIGN OEFN=JSTR,EFN=JSTR-TAM;
#/ASSIGN OEFN=JNIF,EFN=JNIF-TAM;
#/ASSIGN OEFN=OKJF,EFN=OKJF-TAM;
#/ASSIGN OEFN=TDNWF,EFN=TDNWF-TAM;
#/ASSIGN OEFN=TDNNF,EFN=TDNNF-TAM;
#/ASSIGN OEFN=TDI-RDB,EFN=TDIF-TAM;
#/ASSIGN OEFN=TDNAF,EFN=TDNAF-TAM;
set ABORT=0;
../exec/JK090U-TAM $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
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
