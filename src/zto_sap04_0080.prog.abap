*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0080
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0080.

PARAMETERS : p_bir TYPE n LENGTH 10,
             p_iki TYPE n LENGTH 10,
             p_topla RADIOBUTTON GROUP abc,
             p_cik RADIOBUTTON GROUP abc,
             p_carp RADIOBUTTON GROUP abc,
             p_bol    RADIOBUTTON GROUP abc,
             P_kayit  RADIOBUTTON GROUP abc.

DATA : gs_str TYPE ZTO_SAP04_DB_05,
       gt_table TYPE TABLE OF ZTO_SAP04_DB_05.

IF p_topla = abap_true.
  gs_str-saat = sy-uzeit.
  gs_str-tarih = sy-datum .
  gs_str-birinci_sayi = p_bir.
  gs_str-ikinci_sayi = p_iki.
  gs_str-islem = 'toplama'.
  gs_str-sonuc = p_bir + p_iki.
  INSERT ZTO_SAP04_DB_05 FROM gs_str.


ENDIF.
