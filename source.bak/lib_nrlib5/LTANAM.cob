000010 FD  TANAM                                                        Κ·ΣΙ
000020     BLOCK    3     RECORDS                                       ΐΕ΅ΫΌ
000030     LABEL    RECORD   STANDARD                                   Μ§²Ω
000040     VALUE    OF  IDENTIFICATION  "TANAM".
000050*
000060 01  TANAM-R.
000070     02   TANAM-KEY.                                              KEY
000080          03   TANAM-01         PIC 9(6).                         iΌΊ°Δή
000090          03   TANAM-02         PIC 9(1).                         »²½ήζͺ
000100          03   TANAM-03         PIC 9(3).                         »²½ή
000110     02   TANAM-05.                                               έΙ
000120          03   TANAM-051        PIC S9(6).                         λ
000130          03   TANAM-052        PIC S9(6).                        I΅
000140     02   TANAM-06.                                               qΚI΅
000150          03   TANAM-061        PIC S9(6).                        1 {Π
000160          03   TANAM-062        PIC S9(6).                        2 Vͺ
000170          03   TANAM-063        PIC S9(6).                        3 z`
000180          03   TANAM-064        PIC S9(6).                        4 c
000190          03   TANAM-065        PIC S9(6).                        5 k·£
000200          03   TANAM-066        PIC S9(6).                        6 |@
000210          03   TANAM-067        PIC S9(6).                        7 |@
000220          03   TANAM-068        PIC S9(6).                        8 a―
000230     02   TANAM-06A   REDEFINES   TANAM-06.
000240          03   TANAM-06R        PIC S9(6)    OCCURS   8.
000250     02   TANAM-04              PIC 9(8).                         PΏ
000260     02   TANAM-04R        REDEFINES     TANAM-04.
000270          03   TANAM-041        PIC 9(4).                         UΦ
000280          03   TANAM-042        PIC 9(4).                         Z
000290     02  TANAM-07               PIC 9(1).                         όΙζͺ
000300     02  TANAM-08               PIC 9(2).                         ͺήΊ°Δή
000310     02  F                      PIC X(4).
