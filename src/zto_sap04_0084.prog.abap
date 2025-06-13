*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0084
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0084.

* alistirma 4 Yeni bir rapor oluşturun ve üçüncü alıştırmada tanımlanan database tablosundan bütün
*satırları çekerek ekrana yazdırın.

DATA : gs_str   TYPE zto_sap04_db_06,
       gt_table TYPE TABLE OF zto_sap04_db_06.

START-OF-SELECTION .

  SELECT * FROM zto_sap04_db_06 INTO TABLE gt_table .

  LOOP AT gt_table INTO gs_str.
    WRITE : gs_str-phone_brand,
            gs_str-phone_color,
            gs_str-phone_opr_system,
            gs_str-phone_memory,
            gs_str-phone_screen,
            gs_str-phone_price,
            gs_str-phone_curr,
            gs_str-phone_double_sim,
            gs_str-phone_weight.
    SKIP.

  ENDLOOP.
