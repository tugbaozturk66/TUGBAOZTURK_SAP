*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0141_20
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0141_20.

*Alıştırma – 20: Yeni bir fonksiyon yazın. Kullanıcıdan 1 adet gün ismi, 1 adet de sayı alin. Kullanıcının
*girdiği sayı kadar gün sonra günlerden hangi gün olacağını hesaplayın ve kullanıcıya geri bildirin.
*Fonksiyonu yeni yazacağınız bir raporda kullanın. Sonucu ekrana yazdırın.

PARAMETERS : p_day TYPE c LENGTH 15 LOWER CASE,
             p_num TYPE i.

DATA : gv_day TYPE c LENGTH 15.

START-OF-SELECTION.
CALL FUNCTION 'ZTO_FM_SAP04_13'
  EXPORTING
    iv_day           = p_day
    iv_number        = p_num
 IMPORTING
   EV_DAY           = gv_day
 EXCEPTIONS
   YANLIS_GUN       = 1
   OTHERS           = 2
          .
IF sy-subrc <> 1.
* Implement suitable error handling here
ENDIF.

*  BREAK-POINT.
WRITE |Ekleme sonucu cikan gün:{ gv_day }|.

*PARAMETERS: p_day    TYPE c LENGTH 15 LOWER CASE,
*            p_number TYPE i.
*
*DATA: gv_day TYPE c LENGTH 15.
*
*START-OF-SELECTION.
*
*  CALL FUNCTION 'ZMC_FM_SAP04_11'
*    EXPORTING
*      iv_day     = p_day
*      iv_number  = p_number
*    IMPORTING
*      ev_day     = gv_day
*    EXCEPTIONS
*      yanlis_gun = 1
*      OTHERS     = 2.
*
*  IF sy-subrc = 1.
**    MESSAGE
*  ENDIF.
