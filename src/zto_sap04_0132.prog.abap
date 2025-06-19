*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0132
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0132.

*Alıştırma – 6: Yeni bir Search Help oluşturun. Bu Search Help SCARR tablosundaki bütün CARRNAME
*verisine sahip olsun. Search Help’i istediğiniz bir data element içerisinde kullanın. Daha sonra örnek
*bir rapor yazıp 1 adet parametre tanımlayın. Parametreyi tanımlarken bu data elementi kullanın. Gelen
*veriyi kullanarak SCARR tablosunu okuyup ekrana yazdırın.

PARAMETERS: p_carrn TYPE ZTO_SAP04_DE_CARRNAME LOWER CASE.

DATA: gs_scarr TYPE scarr.

START-OF-SELECTION.

SELECT SINGLE * FROM scarr
  INTO gs_scarr
  WHERE carrname = p_carrn.

  BREAK-POINT.
 IF sy-subrc = 0.
WRITE : gs_scarr-carrname.
 ENDIF.
 BREAK-POINT.
