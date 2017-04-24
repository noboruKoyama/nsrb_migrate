#!/bin/tcsh
cd `dirname $0`
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM01 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@01@) SAV= NXT= '
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM04 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@04@) SAV= NXT= '
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM05 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@05@) SAV= NXT= '
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM09 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@09@) SAV= NXT= '
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM90 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@90@) SAV= NXT= '
#**
FLCNV 'IDE=MSD ICI= IFI=KKBM IGN= IFO=SHARE ODE=MSD OCI= OFI=KKBM95 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,2,N,EQ,@95@) SAV= NXT= '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 PA5=C2,C2,C3,J16,C25 \
PB1=kkbm01.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,J,C \
PB8=CREATE MN1=Q '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 PA5=C2,C2,C3,C6,C51 \
PB1=kkbm04.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C \
PB8=CREATE MN1=Q PAA=MOD '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 PA5=C2,C2,C3,J6,C45 \
PB1=kkbm05.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,J,C \
PB8=CREATE MN1=Q PAA=MOD '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 PA5=C2,C5,C6,C6,C6,C6,C33 \
PB1=kkbm09.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C PB8=CREATE MN1=Q PAA=MOD '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 \
PA5=C2,C5,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C1,C42 \
PB1=kkbm90.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q PAA=MOD '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KKBM PA4=1 PA5=C2,C5,C6,C51 \
PB1=kkbm95.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C \
PB8=CREATE MN1=Q PAA=MOD '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA3=TM1 PA4=1 \
PA5=C4,C4,J26,J20,J20,C8,C14,C14,C2,C1,C2,C2,N2,N3,N1,N1,N6,N1,N1,C9,J16,J2\
6,J20,J20,C8,C14,C14,N2,N3,N1,N1,N1,N1V1,N1,N1V1,N4,N1,N1,N1,N1,N4,N1,N4,C1\
9,C6,C36,C6,C4,C4 PB1=tm1.csv PB2=CSV2 PB3=EXCLUSIVE \
PB4=COMMA PB7=C,C,J,J,J,C,C,C,C,C,C,C,S,S,S,S,S,S,S,C,J,J,J,J,C,C,C,S,S,S,S\
,S,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SKDF PA4=1 \
PA5=C4,C8,C1,C6,C1,C6,S6V2,S6V2,S9,C1,C1,C8,C2,C1,C1,C2,C4,C3,J24,C6,C6,C6,\
C6,C6,C6,S7,S3,C6,C12,C6 \
PB1=skdf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,S,S,S,C,C,C,C,C,C,C,C,C,J,C,C,C,C,C,C,S,S,C,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=DATEM PA4=1 \
PA5=C2,C6,C6,C6,C6,C6,C6,C6,C6,C6,C6,C6,C6,C6,C6,C14,C4,C4,C4,C4,C4,C4,C4,C\
4,C4,C4,C4,C4,C4,C4,C4,C20,C4,C4,C4,C4,C4,C1,C2,C1,C1,C1,C1,C1,C1,C1,C1,C1,\
C1,C1,C10,C2,C2,C4,C2,C2,C4,C2,C2,C4,C2,C2,C4 PB1=datem.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C\
,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TTM PA4=1 \
PA5=C4,S9,S7,S9,S7,S9,S7,S8,S6,S9,S7,S9,C2,C2,C2,C1,C1,S9,C20 \
PB1=ttm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,C,S,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHM PA4=1 \
PA5=C5,C20,C2,C16,N6V2,N6V2,C74,N6V2,N6V2,C1,C3,N2,C12,C1,N6V2,N6V2,J24,C4,\
C6,C4,C4,C6 PB1=khm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,C,S,S,C,C,S,C,C,S,S,J,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHTM1 PA4=1 \
PA5=C2,C1,C5,S6V2,S6V2,S6V2,S8,S6V2,S8,S7,S8,S6V2,S8,S6,S6,S6,S6,C1,C12,C1,\
C5,S6V2,S6V2,S6V2,C10,C6 PB1=khtm.csv PB2=CSV2 PB3=EXCLUSIVE \
PB4=COMMA PB7=C,C,C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,S,S,S,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KNHF PA4=1 \
PA5=C2,C8,C5,C2,S5,S6V2,N6V2,S8,C2,C1,C2,C2,C1,C8,C1,C1 \
PB1=knhf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,S,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KNHRF PA4=1 \
PA5=C2,C8,C5,C2,S5,S6V2,N6V2,S8,C2,C1,C2,C2,C1,C8,C1,C1 \
PB1=knhrf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,S,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KNHRYR PA4=1 \
PA5=C2,C8,C5,C2,S5,S6V2,N6V2,S8,C2,C1,C2,C2,C1,C8,C1,C1 \
PB1=knhryr.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,S,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=URIF PA4=1 \
PA5=C1,C8,C4,C5,S6V2,S6V2,S8,C2,C4,C6,C1,C1,C2,C8,C6,C1,C6,S6V2,J18,C1,C2,C\
1,C1 PB1=urif.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,C,C,C,C,C,C,C,C,C,C,S,J,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=URIRF PA4=1 \
PA5=C1,C8,C4,C5,S6V2,S6V2,S8,C2,C4,C6,C1,C1,C2,C8,C6,C1,C6,S6V2,J18,C1,C2,C\
1,C1 PB1=urirf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,C,C,C,C,C,C,C,C,C,C,S,J,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=URIRYR PA4=1 \
PA5=C1,C8,C4,C5,S6V2,S6V2,S8,C2,C4,C6,C1,C1,C2,C8,C6,C1,C6,S6V2,J18,C1,C2,C\
1,C1 PB1=uriryr.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,C,C,C,C,C,C,C,C,C,C,S,J,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHM PA4=1 \
PA5=C5,C20,C2,C16,N6V2,N6V2,C74,N6V2,N6V2,C1,C3,N2,C12,C1,N6V2,N6V2,J24,C4,\
C6,C4,C4,C6 PB1=khm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,C,S,S,C,C,S,C,C,S,S,J,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHMYR PA4=1 \
PA5=C5,C20,C2,C16,N6V2,N6V2,C74,N6V2,N6V2,C1,C3,N2,C12,C1,N6V2,N6V2,J24,C4,\
C6,C4,C4,C6 PB1=khmyr.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,C,S,S,C,C,S,C,C,S,S,J,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHTM1 PA4=1 \
PA5=C2,C1,C5,S6V2,S6V2,S6V2,S8,S6V2,S8,S7,S8,S6V2,S8,S6,S6,S6,S6,C1,C12,C1,\
C5,S6V2,S6V2,S6V2,C10,C6 PB1=khtm.csv PB2=CSV2 PB3=EXCLUSIVE \
PB4=COMMA PB7=C,C,C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,S,S,S,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TSKF PA4=1 \
PA5=C4,S9,S7,C8,S9,S7,C8,S9,S7,C8,S9,S7,C8,S9,S7,C8,S9,S7,S7,S5,S9,S7,C8,C8\
,C2,C1,C1,C68 PB1=tskf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,S,S,C,S,S,C,S,S,C,S,S,C,S,S,C,S,S,S,S,S,S,C,C,C,C,C,C PB8=CREATE \
MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA3=JM PA4=1 \
PA5=C6,J24,N1,N1,N1,N1,S6V2,C1,S6V2,C6,N6V2,C22,C2,C2,C7,C6 \
PB1=jm.csv PB2=CSV1 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,J,S,S,S,S,S,C,S,C,S,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=JSSF PA4=1 \
PA5=C2,C8,C4,C6,S7V2,S6V2,S8,S7,C6,C6,C6,C1,C1,C1,C1,C1,C1,C2,C5,C1,C10,C6,\
C1,C1 PB1=jssf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,S,S,S,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=NYUF PA4=1 \
PA5=C8,C4,S8,C2,C1,C8,C6,C1,C2,C2,C1,C6,C1,C6,C2,C8,C1,C13,C1,C1,C1,C1,C1,C\
17 PB1=nyuf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=NYURF PA4=1 \
PA5=C8,C4,S8,C2,C1,C8,C6,C1,C2,C2,C1,C6,C1,C6,C2,C8,C1,C13,C1,C1,C1,C1,C1,C\
17 PB1=nyurf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=NYURYR PA4=1 \
PA5=C8,C4,S8,C2,C1,C8,C6,C1,C2,C2,C1,C6,C1,C6,C2,C8,C1,C13,C1,C1,C1,C1,C1,C\
17 PB1=nyuryr.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TUKF1 PA4=1 \
PA5=C4,C10,C4,C8,C1,C6,C1,S9,S7,C8,C1,C2,C1,C1,C1 PB1=tukfd.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,S,S,C,C,C,C,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=CALNF PA4=1 PA5=C8,C1,C1,C1,C1,C1,C1,C1,C1 \
PB1=calnf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=BUMON-K PA4=1 \
PA5=C2,C2,J10,C2,C1,C2,C1,C2,C1,C2,C1,C2,C1,C2,C1,C2,C1,C2,C1,C2,C1,C1,C2,C\
1,C2,C1,C2,C1,C3 PB1=bumon-k.csv PB2=CSV2 PB3=EXCLUSIVE \
PB4=COMMA PB7=C,C,J,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SIWAKE-IW PA4=1 \
PA5=C8,C6,C2,C4,C4,C4,C3,C1,S10,C2,C4,C4,C4,C3,C1,S10,C2,C5,C3,J20,C1,J10,C\
1,C6,C8,C2,C1,C4,C4,C8,C15,C1,C1 PB1=siwake-iw.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,S,C,C,C,C,C,C,S,C,C,C,J,C,J,C,C,C,C,C,C,C,C,C,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHTNF PA4=1 PA5=C1,C5,S6V2,C2,C1,C3,C1 \
PB1=khtnf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,S,C,C,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KHTMYR PA4=1 \
PA5=C2,C1,C5,S6V2,S6V2,S6V2,S8,S6V2,S8,S7,S8,S6V2,S8,S6,S6,S6,S6,C1,C12,C1,\
C5,S6V2,S6V2,S6V2,C10,C6 PB1=khtmyr.csv PB2=CSV2 PB3=EXCLUSIVE \
PB4=COMMA PB7=C,C,C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,S,S,S,C,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KBHKF PA4=1 \
PA5=C4,C2,S9,S9,S9,S9,S9,S9,S9,S9,S9,S9,S9,S9,C14 PB1=kbhkf.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,S,S,S,S,S,S,S,S,S,S,S,S,C \
PB8=CREATE MN1=Q '
#**-------------------------------------------------------------------------
#**-------------------------------------------------------------------------
