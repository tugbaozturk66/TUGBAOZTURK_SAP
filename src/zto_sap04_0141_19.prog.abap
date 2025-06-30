*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0141_19
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0141_19.

*Alıştırma – 19: Yeni bir fonksiyon yazın. Kullanıcıdan 1 adet işlem sembolü adet de sayı alsın. Gelen
*sembole göre uygun matematiksel işlemi yapıp sonucunu kullanıcıya versin. İşlem sembolü bos olursa
*bir exception bildirsin. Geçersiz bir işlem sembolü girilirse ayrı bir exception bildirsin. Fonksiyon
*içerisindeki tüm işlemleri ayrı performlar halinde yapın. Fonksiyonu yeni yazacağınız bir raporda
*kullanın. Sonucu ekrana yazdırın.

PARAMETERS : p_no1    TYPE i,
             p_no2    TYPE i,
             p_symbol TYPE c LENGTH 1.

DATA : gv_result TYPE i.

START-OF-SELECTION.

CALL FUNCTION 'ZTO_FM_SAP04_12'
  EXPORTING
    iv_symbol                  = p_symbol
    iv_number1                 = p_no1
    iv_number2                 = p_no2
 IMPORTING
   EV_RESULT                  = gv_result
 EXCEPTIONS
   SIFIRA_BOLME_ISLEMI        = 1
   BOS_ISLEM_SEMBOLU          = 2
   YANLIS_ISLEM_SEMBOLU       = 3
   OTHERS                     = 4
     .
BREAK-POINT .
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.
