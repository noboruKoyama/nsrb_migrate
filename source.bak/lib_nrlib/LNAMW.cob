000010 01  WN-AREA.
000020     02  WN-DCHK        PIC  9(001).
000030     02  WN-CNT1        PIC  9(002).
000040     02  WN-CNT2        PIC  9(002).
000050     02  WN-CNT3        PIC  9(002).
000060     02  WN-NAME        PIC  N(026).
000070     02  WN-ANA   REDEFINES WN-NAME.
000080       03  WN-NAD   OCCURS  26.
000090         04  WN-NA      PIC  N(001).
000100     02  WN-WNAME       PIC  N(026).
000110     02  WN-WANA   REDEFINES WN-WNAME.
000120       03  WN-WNAD   OCCURS  26.
000130         04  WN-WNA     PIC  N(001).
000140     02  WN-ONAME       PIC  N(020).
000150     02  WN-AONA  REDEFINES WN-ONAME.
000160       03  WN-ONAD  OCCURS  20.
000170         04  WN-ONA     PIC  N(001).
000180     02  WN-UNAME       PIC  N(020).
000190     02  WN-AUNA  REDEFINES WN-UNAME.
000200       03  WN-UNAD  OCCURS  20.
000210         04  WN-UNA     PIC  N(001).
000220     02  WN-KUM         PIC  N(004).
000230     02  WN-AKUM  REDEFINES WN-KUM.
000240       03  WN-KUMD  OCCURS   4.
000250         04  WN-KU      PIC  N(001).
