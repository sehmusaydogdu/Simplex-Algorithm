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
MAX
ROWS
 N  COST
 L  LIM1
 L  LIM2
 L  LIM3
 L  LIM4
COLUMNS
    X1        COST               5.0   LIM1               6.0
    X1        LIM2               1.0   LIM3              -1.0
    X2        COST               4.0   LIM1               4.0
    X2        LIM2               2.0   LIM3               1.0
    X2        LIM4               1
RHS
    RHS1      LIM1               24.0   LIM2              6.0
    RHS1      LIM3              1.0   LIM4              2.0
BOUNDS
ENDATA
