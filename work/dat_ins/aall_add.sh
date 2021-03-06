#!/bin/tcsh
cd `dirname $0`
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TNOM PA4=1 \
PA5=C2,C4,C4,C4,C4,C4,C4,C8,C6,C216 PB1=./160916avx/tnom.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=BANKM PA4=1 \
PA5=C4,J8,J8,N10,N10,N10,C1,C11,C1,C4,C2 PB1=./160916avx/bankm.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,J,J,S,S,S,C,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=FBKM PA4=1 PA5=C4,C3,C15,C15,C1,C4 \
PB1=./160916avx/fbkm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C \
PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=FKSM PA4=1 \
PA5=C4,C1,C30,C7,C1,C7,C1,N9,C30,C7,C1,C7,C1,N9,C1,C4,C2,C6 \
PB1=./160916avx/fksm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,S,C,C,C,C,C,S,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=UKETM PA4=1 \
PA5=C4,C2,C2,C4,C2,C1,C2,C4,N10,C6,C6,C6,C6,C6,C4,J24,C39,C6,C4,C4,C4 \
PB1=./160916avx/uket.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,S,C,C,C,C,C,C,J,C,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SHITM PA4=1 \
PA5=C4,C2,C2,C4,C2,C4,N10,C6,C6,N8,N8,N8,N8,N8,N8,N8,C24,C4,C4 \
PB1=./160916avx/shtim.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,S,C,C,S,S,S,S,S,S,S,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TIDM PA4=1 PA5=C4,C2,C6,C6,C6,C4,C4,C9,C1 \
PB1=./160916avx/tidm.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TYBF PA4=1 \
PA5=C4,C6,C6,C4,C2,C4,N10,C1,C6,C4,C4 PB1=./160916avx/tybf.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,S,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=TNKF PA4=1 PA5=C6,C4,N9,C1,C1,C11 \
PB1=./160916avx/tnkf.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,S,C,C,C \
PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RSF PA4=1 \
PA5=C6,C6,C6,C4,N9,N5,C1,C1,C23,C3 PB1=./160916avx/rsf.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,S,S,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RSRF PA4=1 \
PA5=C6,C6,C6,C4,N9,N5,C1,C1,C23,C3 PB1=./160916avx/rsf.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,S,S,C,C,C,C PB8=CREATE MN1=Q \
'
#**-------------------------------------------------------------------------\
FLCNV 'IDE=MSD ICI= IFI=SSOUGOF IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF1 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@1@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOF IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF2 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@2@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOF IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF8 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@8@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOF IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF9 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@9@) SAV= NXT= \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 \
PA5=C1,C2,C1,C10,C40,C4,C4,C15,C3,C15,C1,C7,C17 PB1=./160916avx/ssougof1.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE \
MN1=Q \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 \
PA5=C1,C4,C15,C3,C15,C4,C1,C7,C30,N10,C1,C20,C9 PB1=./160916avx/ssougof2.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,C,C,S,C,C,C PB8=CREATE \
MN1=Q PAA=MOD\
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 PA5=C1,N6,N12,C101 \
PB1=./160916avx/ssougof8.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,S,S,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 PA5=C1,C119 \
PB1=./160916avx/ssougof9.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#**-------------------------------------------------------------------------\
FLCNV 'IDE=MSD ICI= IFI=SSOUGOYR IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF1 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@1@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOYR IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF2 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@2@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOYR IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF8 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@8@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=SSOUGOYR IGN= IFO=SHARE ODE=MSD OCI= OFI=SSOUGOF9 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@9@) SAV= NXT= \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 \
PA5=C1,C2,C1,C10,C40,C4,C4,C15,C3,C15,C1,C7,C8,C3,C6 \
PB1=./160916avx/ssougoyr1.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,C,C,C,C,C,C,C,C \
PB8=CREATE MN1=Q \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 \
PA5=C1,C4,C15,C3,C15,C4,C1,C7,C30,N10,C1,C20,C3,C6 \
PB1=./160916avx/ssougoyr2.csv \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C,C,C,C,C,S,C,C,C,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 PA5=C1,N6,N12,C92,C3,C6 \
PB1=./160916avx/ssougoyr8.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,S,S,C,C,C PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=SSOUGOF PA4=1 PA5=C1,C110,C3,C6 \
PB1=./160916avx/ssougoyr9.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#**-------------------------------------------------------------------------\
FLCNV 'IDE=MSD ICI= IFI=RNOUSTF IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF1 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@1@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTF IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF2 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@2@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTF IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF8 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@8@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTF IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF9 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@9@) SAV= NXT= \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,C2,C1,C6,C6,C6,C4,C15,C3,C15,C3,C1,C10,C40,C1,C1,N14,C71 \
PB1=./160916avx/rnoustf1.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,S,C PB8=CREATE MN1=Q \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,C8,C6,C6,C1,C2,N12,N12,C6,C6,C1,C7,C3,C10,C48,C15,C15,C20,C21 \
PB1=./160916avx/rnoustf2.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,S,S,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,N6,N13,N6,N13,C1,N14,N7,C139 PB1=./160916avx/rnoustf8.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,S,S,S,S,C,S,S,C PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 PA5=C1,N10,N5,C184 \
PB1=./160916avx/rnousf9.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,S,S,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#**-------------------------------------------------------------------------\
FLCNV 'IDE=MSD ICI= IFI=RNOUSTYR IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF1 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@1@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTYR IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF2 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@2@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTYR IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF8 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@8@) SAV= NXT= \
'
#** \
FLCNV 'IDE=MSD ICI= IFI=RNOUSTYR IGN= IFO=SHARE ODE=MSD OCI= OFI=RNOUSTF9 OGN= \
LST=NO ERR=ABORT MOD=CREATE AMD=LOGICAL UMD=NO GTR=NO DEL=NO CLR=NO \
OUT= RNG= SEL=(1,1,N,EQ,@9@) SAV= NXT= \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,C2,C1,C6,C6,C6,C4,C15,C3,C15,C3,C1,C10,C40,C1,C1,N14,C62,C3,C6 \
PB1=./160916avx/rnoustyr1.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,S,C,C,C PB8=CREATE MN1=Q \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,C8,C6,C6,C1,C2,N12,N12,C6,C6,C1,C7,C3,C10,C48,C15,C15,C20,C12,C3,C6 \
PB1=./160916avx/rnoustyr2.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,C,C,C,C,S,S,C,C,C,C,C,C,C,C,C,C,C,C,C PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 \
PA5=C1,N6,N13,N6,N13,C1,N14,N7,C130,C3,C6 \
PB1=./160916avx/rnoustyr8.csv PB2=CSV2 \
PB3=EXCLUSIVE PB4=COMMA PB7=C,S,S,S,S,C,S,S,C,C,C PB8=CREATE MN1=Q PAA=MOD \
'
#** \
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=RNOUSTF PA4=1 PA5=C1,N10,N5,C175,C3,C6 \
PB1=./160916avx/rnousyr9.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,S,S,C,C,C \
PB8=CREATE MN1=Q PAA=MOD \
'
#**-------------------------------------------------------------------------\
#**-------------------------------------------------------------------------\
