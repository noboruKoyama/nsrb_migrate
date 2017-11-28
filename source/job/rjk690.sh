#!/bin/tcsh
if (${#argv} >= 1) then
    set USER_ID = ${argv[1]};
else
    set USER_ID = STN000;
endif
set JRCODE=000;
set FN1 = ${JRCODE_PATH}${USER_ID};
set FN2 = ${ERROR_PATH}${USER_ID};
#/ASSIGN OEFN=JSTR,EFN=JSTR-RYO;
setenv JSTR "JSTR-RYO"
set ABORT=0;
../exec/JK069I $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
#/ASSIGN OEFN=JSTR,RESOURCE=RELEASE;
unset JSTR
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:
