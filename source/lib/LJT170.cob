      ************************************
      *****     όoΙέΟ[N     *****
      ************************************
       01  JT-W170.
           02  JT-W170_PNAME1         PIC  X(012) VALUE SPACE.
           02  F                      PIC  X(001).
           02  JT-W170_PNAME2         PIC  X(012) VALUE SPACE.
           02  F                      PIC  X(001).
           02  JT-W170_LNAME          PIC  X(007) VALUE "JT-W170".
           02  F                      PIC  X(001).
           02  JT-W170_KEY1           PIC  X(100) VALUE SPACE.
           02  JT-W170_KEY2           PIC  X(100) VALUE SPACE.
           02  JT-W170_KEY3           PIC  X(100) VALUE SPACE.
           02  JT-W170_KEY4           PIC  X(100) VALUE SPACE.
           02  JT-W170_KEY5           PIC  X(100) VALUE SPACE.
           02  JT-W170_SORT           PIC  X(100) VALUE SPACE.
           02  JT-W170_IDLST          PIC  X(100) VALUE SPACE.
           02  JT-W170_RES            USAGE  POINTER.
       01  JTW-R.
           02  JTW-KEY1.                                                KEY1
             03  JTW-01               PIC  9(06)  COMP-3.               iΌΊ°Δή
             03  JTW-02               PIC  9(08)  COMP-3.
             03  JTW-03               PIC  9(02).                       όoΝζ
             03  JTW-04               PIC  9(06)  COMP-3.               `[
             03  JTW-05               PIC  9(01).                       s
           02  JTW-06                 PIC  9(01).                       qΊ°Δή
           02  JTW-07                 PIC  9(01).                       TCY
           02  JTW-08.                                                  όoΙ
             03  JTW-081              PIC S9(04)  COMP-3    OCCURS  10.
           02  JTW-09                 PIC  9(01).                       ΆYζͺ
           02  JTW-10                 PIC  9(01).                       oΧ`ζ
           02  JTW-11.
             03  JTW-111              PIC  9(04).                       ΎΣζC
             03  JTW-112              PIC  9(03).                       ΌNO
           02  JTW-12                 PIC  9(06)  COMP-3.               θσ
           02  JTW-13                 PIC  9(01).                       aθζͺ
           02  JTW-14                 PIC  9(01).                       ^C
           02  JTW-KEY2.
             03  JTW-15.                                                σ
               04  JTW-151            PIC  9(06)  COMP-3.               @σ
               04  JTW-152            PIC  9(01).                       @s
             03  JTW-16               PIC  9(08)  COMP-3.
             03  JTW-17               PIC  9(01).                       ΪΊ°ΔήKBN
             03  JTW-18.                                                `[
               04  JTW-181            PIC  9(06)  COMP-3.               @`[
               04  JTW-182            PIC  9(01).                       @s
           02  JTW-KEY3.
             03  JTW-19               PIC  9(04).                       ΎΣζC
             03  JTW-20               PIC  9(08)  COMP-3.
             03  JTW-21               PIC  9(01).                       R[ζ
             03  JTW-22.                                                `[
               04  JTW-221            PIC  9(06)  COMP-3.               oΧw
               04  JTW-222            PIC  9(01).                       @s
           02  JTW-23                 PIC  N(09).                       zB
           02  JTW-24                 PIC  N(23).                       Ev
           02  FILLER                 PIC  X(08).
           02  JTW-90                 PIC  9(01).                       όΝ
           02  JTW-91                 PIC  9(01).                       Jzζͺ
           02  JTW-92                 PIC  9(02).                       
       77  F                          PIC  X(001).
