      ****************************************************************
      *                                                              *
      *               < �����  �ݴ�  ̧�� >     * 85 REC / 3 B *     *
      *                                                              *
      ****************************************************************
       01  BU-F.
           02  BU-F_PNAME1         PIC  X(006) VALUE "BUPL-K".
           02  F                   PIC  X(001).
           02  BU-F_LNAME          PIC  X(004) VALUE "BU-F".
           02  F                   PIC  X(001).
           02  BU-F_KEY1           PIC  X(100) VALUE SPACE.
           02  BU-F_KEY2           PIC  X(100) VALUE SPACE.
           02  BU-F_SORT           PIC  X(100) VALUE SPACE.
           02  BU-F_IDLST          PIC  X(100) VALUE SPACE.
           02  BU-F_RES            USAGE  POINTER.
       01  BU-REC.
           02  BU-KEY.
               03  BU-BUMN.
                   04  BU-BUCD     PIC 9(02).                           ���ݺ���
                   04  BU-YOBI     PIC 9(02).                           ���
               03  BU-LINNO        PIC 9(03).                           ײ�NO
           02      BU-KAIP         PIC 9(01).
           02      BU-GOKBN        PIC 9(01).
           02      BU-KMKNM        PIC N(10).
           02  BU-ZEN.
               03  BU-ZENKI        PIC S9(11).
               03  BU-TOUKI        PIC S9(11).
           02  BU-DOG.
               03  BU-DOGET        PIC S9(11).
               03  BU-TOGET        PIC S9(11).
           02      BU-URKBN        PIC X(01).
           02      BU-PRKBN        PIC 9(01).
           02      BU-TBKBN        PIC 9(01).
           02      F               PIC X(09).
       77  F                       PIC X(01).
