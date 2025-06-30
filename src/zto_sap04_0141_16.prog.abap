*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0141_16
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0141_16.
*Alıştırma – 16: Yeni bir fonksiyon yazın. Bir adet CARRID alsın. Gelen CARRID bilgisine göre SCARR
*tablosunu okusun ve kullanıcıya bir internal tablo versin. Fonksiyonu yeni yazacağınız bir raporda
*kullanın. Gelen satırları ekrana yazdırın.

PARAMETERS : p_carrid TYPE s_carr_id .

DATA : gt_spfli TYPE TABLE OF spfli.

START-OF-SELECTION.

  CALL FUNCTION 'ZTO_FM_SAP04_09'
    EXPORTING
      iv_carrid = p_carrid
    IMPORTING
      et_spfli  = gt_spfli.


  BREAK-POINT.
