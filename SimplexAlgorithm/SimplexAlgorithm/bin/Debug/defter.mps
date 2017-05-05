NAME          OrnekMPS
*
*  Aciklama satirlari '*' ile belirtilir.
*
*  Min:
*
*      x1 + 4 * x2 + 9 * x3
*
*  Kisitlar:
*
*      x1     + x2          <=  5
*      x1              + x3 >= 10
*             - x2     + x3 =   7
*
*  Degisken sinirlari:
*
*    0 <= x1 <= 4
*   -1 <= x2 <= 1
*         x3 sinirlandirilmamis
*
*  Tablo:
*
*            X1      X2     X3    |  RHS1
*       +--------------------------------
*  LIM1 |   1.0     1.0    0.0    |   5.0
*  LIM2 |   1.0     0.0    1.0    |  10.0
*  EQN  |   0.0    -1.0    1.0    |   7.0
*  -----+-------------------------+------
*  COST |   1.0     4.0    9.0    |
*
OBJSENSE
MIN
ROWS
 N  COST
 E  EQN
 G  LIM2
 L  LIM1
COLUMNS
    X1        COST               4.0   EQN               3.0
    X1        LIM2               4.0   LIM1    1.0
    X2        COST               1.0   LIM1               2.0
    X2        LIM2               3.0   EQN                1.0
RHS
    RHS1      EQN               3.0   LIM2              6.0
    RHS1      LIM1                4.0
BOUNDS
 ENDATA

