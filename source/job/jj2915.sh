#!/bin/tcsh
source ../job/RC_INIT.sh
set ABORT=0;
../exec/JT289U $USER_ID $JRCODE 1 1
source ../job/CRC_LIBRARY.sh
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '00' 'WK0256' '((10,6,N),(2,8,N),(16,4,N),(42,3,N),(26,15,N))' '' '' '' '' '' '' '受注他残帳（品名、得意先別）指図含　白紙'
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
../exec/JT291L $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
ENDJOB:
