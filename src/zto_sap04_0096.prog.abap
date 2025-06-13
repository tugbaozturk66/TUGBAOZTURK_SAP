*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0096
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0096.

*Alıştırma – 16: Yeni bir rapor oluşturun. Rapor içerisinde 4 adet parametre tanımlayın. Kullanıcıdan bir
*uçuş şirketi bilgisi (carrid) ve 1 ile 100 arasında bir sayı alin. (Ek olarak 2 adet radiobutton oluşturun.
*Birincisi arttırmak için ikincisi ise azaltmak için) Kendi oluşturduğunuz ve SFLIGHT ile ayni satir yapısına
*sahip olan database tablosunda kullanıcının girdiği uçuş şirketi ile ayni uçuş şirketi bilgisine sahip olan
*satırların “Price” kolonundaki hücrelerini, kullanıcının girdiği ikinci parametredeki değer kadar
*değiştirin. (Tanımlanan 3 ve 4’üncü parametrelerden hangisi seçildiyse arttırmaya veya azaltmaya
*karar verin). (Set-Update).

PARAMETERS : p_carrid TYPE s_carr_id,
             p_number TYPE i,
             p_up     RADIOBUTTON GROUP abc,
             p_down   RADIOBUTTON GROUP abc.
DATA : gs_sflight TYPE sflight,
       gt_sflight TYPE TABLE OF sflight.

START-OF-SELECTION.

  IF p_number > 100 OR p_number < 1.
    MESSAGE 'girilen deger 1 den kucuk 100 den buyuk olamaz ' TYPE 'I' DISPLAY LIKE 'E'.
    EXIT .
  ENDIF.

  SELECT * FROM zto_sap04sflight INTO TABLE gt_sflight WHERE carrid = p_carrid.

  IF sy-subrc NE 0.
    MESSAGE 'gecersiz id numarasi girildi' TYPE 'I' DISPLAY LIKE 'E'.
    EXIT.
  ENDIF.

  LOOP AT gt_sflight INTO gs_sflight.
    IF p_up = abap_true.
      ADD p_number TO gs_sflight-price .
    ELSE.
      SUBTRACT p_number FROM gs_sflight-price.
    ENDIF.
    UPDATE zto_sap04sflight  SET price = gs_sflight-price
                             WHERE carrid = gs_sflight-carrid AND
                                   connid = gs_sflight-connid AND
                                   fldate = gs_sflight-fldate.
  ENDLOOP.
