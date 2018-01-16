#!/bin/tcsh
source ../job/RC_INIT.sh
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'JSTRRF' 'WK0256' '((32,1,N),(138,1,N),(25,4,N),(142,6,N),(1,7,N))' '' '' '' '' '((7,1,N,EQ,@1@)A(142,6,N,NE,@000000@)A(148,2,N,EQ,@00@))' '' '  倉庫運送得意先別　出荷個数ワーク作成  '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
set ABORT=0;
../exec/JK815U $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '00' 'WK0128' '((7,1,N),(20,1,N),(33,4,N))' '' '' '((89,5),(94,5),(99,5),(104,5))' '' '' '' '  倉庫運送得意先別　出荷個数ワーク作成  '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
NFCNV 'MN1=C MN2=AD PA1=MSD PA3=WK0128008 PA4=1 \
PA5=C6,C1,J6,C1,J6,C4,J26,S5,S5,S5,S5,C2,C18 PB1=../tmp/UNSOUC.CSV \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,J,C,J,C,J,S,S,S,S,C,C \
PB8=CREATE MN1=Q '
source ../job/CRC_LIBRARY.sh
ENDJOB:
