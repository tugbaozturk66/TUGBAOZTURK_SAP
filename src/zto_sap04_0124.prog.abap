*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0124
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0124.

*Konu;Select-Options Range  Soru; Herhangi bir select işlemi yapmadan
*sflight tablosundan AA-DL arasındaki carrid kolonlarını çekerek bir
*dahili tabloya atalım.Daha sonra Debugda kontrolünü sağlayalım.
*Düzeltiyorum ; bu type Range tanımlandıktan sonra Select işlemi burda tanımlanan range tablosuna göre yapılacak.

TYPES:BEGIN OF gty_carrid,
        sign,
        option(2),
        low(3),
        high(3),
      END OF gty_carrid.

DATA:lt_carrid_range TYPE RANGE OF sflight-carrid,
     lt_connid_range TYPE RANGE OF sflight-connid,
     ls_range        TYPE gty_carrid.

START-OF-SELECTION.



  ls_range-sign   = 'I'.      "AA-DL arasındaki veriyi çek
  ls_range-option = 'BT'.
  ls_range-low    = 'AA'.
  ls_range-high   = 'DL'.
  APPEND ls_range TO lt_carrid_range.
  CLEAR ls_range.

  SELECT * FROM sflight INTO TABLE @DATA(gt_table) WHERE carrid IN @lt_carrid_range.

  BREAK-POINT.
