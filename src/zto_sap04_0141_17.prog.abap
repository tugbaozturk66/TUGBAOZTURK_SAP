*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0141_17
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0141_17.

*Alıştırma – 17: Yeni bir fonksiyon yazın. Bir adet CARRNAME alsın. Gelen CARRNAME bilgisine göre
*SCARR tablosunu okusun ve kullanıcıya bir internal tablo versin. Ayrıca elde edilen internal tablodaki
*CARRID değerlerini kullanarak SPFLI ve SFLIGHT tablolarını da okuyup kullanıcıya versin. Fonksiyonu
*yeni yazacağınız bir raporda kullanın. Gelen satırları ekrana yazdırın.

PARAMETERS : p_carrn TYPE ZTO_SAP04_DE_carrname LOWER CASE .

DATA : gs_scarr TYPE scarr ,
       gt_spfli TYPE TABLE OF spfli,
       gt_sflight TYPE TABLE OF sflight.

START-OF-SELECTION.

CALL FUNCTION 'ZTO_FM_SAP04_10'
  EXPORTING
    iv_carrn         = p_carrn
 IMPORTING
   ES_SCARR         = gs_scarr
   ET_SPFLI         = gt_spfli
   ET_SFLIGHT       = gt_sflight
          .
BREAK-POINT.
