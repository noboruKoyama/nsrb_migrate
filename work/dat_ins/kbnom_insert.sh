#!/bin/sh
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KBNOM PA4=1 PA5=C2,C3,C2,C6,C6,C45 \
PB1=./20170204/kbnom1.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C,C \
PB8=CREATE MN1=Q '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KBNOM PA4=1 PA5=C2,C3,C6,C53 \
PB1=./20170204/kbnom2.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C \
PB8=CREATE PAA=MOD MN1=Q '
#**
NFCNV 'MN1=C MN2=DA PA1=MSD PA2= PA3=KBNOM PA4=1 PA5=C2,C3,C6,C53 \
PB1=./20170204/kbnom3.csv PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,C \
PB8=CREATE PAA=MOD MN1=Q '