      ***  仕訳ヒストリ     (170/3)
       01  SH-REC.
           02  SH-KEY3.
             03  HKACD1.
               04  HACCNTCD     PIC 9(4).
               04  HHOACCNT     PIC 9(4).
             03  SH-KEY1.
               04  HTRDATE      PIC 9(8).
               04  HJUNLNO      PIC 9(6).
               04  HLINENO      PIC 9(2).
               04  HDR-CR       PIC 9(1).
           02  HSECTCD          PIC 9(4).                               ﾌﾞﾓﾝC
           02  HSKINCD          PIC 9(3).                               ｼｷﾝｸﾞﾘC
           02  HTAXKB           PIC X(1).                               ｶｾﾞｲC
           02  HAMOUNT          PIC S9(10).                             ｷﾝｶﾞｸ
           02  HTEG-BAN         PIC 9(2).                               ﾃｶﾞﾀBKC
           02  HKACD2.
             03  HOPPCD         PIC 9(4).                               ｱｲﾃｶﾓｸC
             03  HHOOPPCD       PIC 9(4).                                ﾎｼﾞｮｶﾓｸ
           02  HCUSTCD          PIC 9(5).                               ﾄﾘﾋｷｻｷC
           02  HTEKICD          PIC 9(3).                               ﾃｷﾖｳC
           02  HTEKIYO          PIC N(20).                              ﾃｷﾖｳ
           02  HKEIHIKB         PIC 9(1).                               ｹｲﾋC
           02  HNAMEN           PIC N(10).
           02  SH-KEY2.                                                 KEY2
             03  HACCNTCD2      PIC 9(4).                               ｶﾓｸC
             03  HTRDATE2       PIC 9(8).
             03  HJUNLNO2       PIC 9(6).                               ﾃﾞﾝﾋﾟｮｳ
             03  HLINENO2       PIC 9(2).                                ｷﾞｮｳ
             03  HDR-CR2        PIC 9(1).                               ﾀｲｼｬｸC
           02  F                PIC X(25).
           02  HETAX            PIC X(01).
           02  HCOM             PIC 9(1).                               ｾﾞｲｹｲｻﾝC
