      *****************************************
      *    MESSEGE  AREA                      *
      *                                       *
      * WORKING-STORAGE SECTION  :  LSERR     *
      * PROCEDURE DIVISION       :  LSERR_P   *
      *****************************************
       01  DISP-ERR-AREA.
           02  DISP-MSG-01.
               03  01DISP-MSG-01    PIC X(60).
           02  DISP-MSG-SPACE.
               03  01DISP-MSG-SPACE PIC X(60).
           02  DISP-BUZ-B.
               03  FILLER           PIC X(05) VALUE X"1B4210".
           02  DISP-BUZ-J.
               03  FILLER           PIC X(05) VALUE X"1B4A01".
           02  NOR-M01.
               03  FILLER           PIC N(06) VALUE
                 "@}X^@".
      *           *       Ï   œ   À
               03  FILLER           PIC N(05) VALUE
                 "o^Ï@".
      *           Äł  Ûž  œȚĐ     *
           02  NOR-D01.
               03  FILLER           PIC N(06) VALUE
                 "@f\^@".
      *           *       ĂȚ  °   À
               03  FILLER           PIC N(05) VALUE
                 "o^Ï@".
      *           Äł  Ûž  œȚĐ     *
           02  INV-M01.
               03  FILLER           PIC N(06) VALUE
                 "@}X^@".
      *           *       Ï   œ   À
               03  FILLER           PIC N(05) VALUE
                 "ąo^@".
      *           Đ   Äł  Ûž      *
           02  INV-D01.
               03  FILLER           PIC N(06) VALUE
                 "@f\^@".
      *           *       ĂȚ  °   À
               03  FILLER           PIC N(05) VALUE
                 "ąo^@".
      *           Đ   Äł  Ûž      *
           02  OK-01.
               03  FILLER           PIC N(07) VALUE
                 "@n@j@".
      *           *       O       K       *
           02  CAN-01.
               03  FILLER           PIC N(05) VALUE
                 "@L".
      *           *       ·   Ź   Ę
               03  FILLER           PIC N(04) VALUE
                 "Z@".
      *           Ÿ   Ù       *
           02  ERR-01.
               03  FILLER           PIC N(05) VALUE
                 "@üÍG".
      *           *       Æ­ł Űźž Ž
               03  FILLER           PIC N(04) VALUE
                 "\@".
      *           Ś   °       *
           02  ERR-02.
               03  FILLER           PIC N(11) VALUE
                 "@f[^@È”@@".
           02  ERR-DIS.
               03  FILLER           PIC X(05) VALUE
               "<<<  ".
               03  02ERR-DIS        PIC X(12).
               03  03ERR-DIS        PIC X(01).
               03  FILLER           PIC X(11) VALUE
               "ŽŚ° STATUS=".
               03  05ERR-DIS        PIC X(02).
               03  FILLER           PIC X(05) VALUE
               "  >>>".
               03  FILLER           PIC X(05) VALUE
               " KEY=".
               03  08ERR-DIS        PIC X(30).
      **
