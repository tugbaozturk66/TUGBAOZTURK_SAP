*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0114_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0114_01.

*PARAMETERS : p_carrid TYPE s_carr_id.
DATA : gs_scarr TYPE scarr,
       gt_scarr TYPE TABLE OF scarr,
       gv_carrid TYPE s_carr_id.
"select optionda for dan sonra direkt typ tipi veremiyoruz bunu iki sekilde yapabiliyoruz
"1 satir olusturup satirdan istedigimiz kolonu refere edebiliyoruz.
"2 bir gv olusturup ona istenen kolonun type i verilir ve asagidaki gibi oluyor.

*SELECT-OPTIONS : so_carid FOR gs_scarr-carrid.
SELECT-OPTIONS : so_carid FOR gv_carrid.

START-OF-SELECTION.

SELECT * FROM scarr
         INTO TABLE gt_scarr
*         WHERE carrid = p_carrid " boyle demiyoruz artik birden fazla secenek oldugu icin.
         WHERE carrid IN so_carid.

LOOP AT gt_scarr INTO gs_scarr.
  WRITE : gs_scarr-carrid ,
          gs_scarr-carrname.
CLEAr : gs_scarr.
SKIP.

ENDLOOP.
