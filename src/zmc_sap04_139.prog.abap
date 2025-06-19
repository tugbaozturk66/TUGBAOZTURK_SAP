*&---------------------------------------------------------------------*
*& Report ZMC_SAP04_139
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmc_sap04_139.

*Alıştırma – 14: Yeni bir fonksiyon yazın. Kullanıcıdan 20 karakter uzunluğunda 3 adet text alsın. Bütün
*textleri birleştirsin ve tek bir text halinde kullanıcıya geri versin. Ayrıca yeni oluşan textin içerisinde kaç
*karakter olduğu bilgisini de versin. Fonksiyonu yeni yazacağınız bir raporda kullanın. Oluşan texti ve
*karakter sayısını ekrana yazdırın.

PARAMETERS: p_text1 TYPE c LENGTH 20,
            p_text2 TYPE c LENGTH 20,
            p_text3 TYPE c LENGTH 20.

DATA: gv_text    TYPE string,
      gv_no_char TYPE n LENGTH 2,
      gv_msg TYPE string.

START-OF-SELECTION.

  CALL FUNCTION 'ZMC_FM_SAP04_05'
    EXPORTING
      iv_text_1  = p_text1
      iv_text_2  = p_text2
      iv_text_3  = p_text3
    IMPORTING
      ev_text    = gv_text
      ev_no_char = gv_no_char.

  CONCATENATE gv_text 'Karakter sayisi:' gv_no_char INTO gv_msg SEPARATED BY space.

  MESSAGE gv_msg TYPE 'I'.
