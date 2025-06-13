*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0095
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0095.

*Alıştırma – 15: Yeni bir rapor oluşturun. Rapor içerisinde 4 adet parametre tanımlayın. Kullanıcıdan bir
*uçuş şirketi bilgisi (carrid) ve 1 ile 100 arasında bir sayı alin. (Ek olarak 2 adet radiobutton oluşturun.
*Birincisi arttırmak için ikincisi ise azaltmak için) Kendi oluşturduğunuz ve SPFLI ile ayni satir yapısına
*sahip olan database tablosunda kullanıcının girdiği uçuş şirketi ile ayni uçuş şirketi bilgisine sahip olan
*satırların “Distance” kolonundaki hücrelerini, kullanıcının girdiği ikinci parametredeki değer kadar
*değiştirin. (Tanımlanan 3 ve 4’üncü parametrelerden hangisi seçildiyse arttırmaya veya azaltmaya
*karar verin). (Set-Update).

PARAMETERS : p_carrid TYPE s_carr_id,
             p_number TYPE i,
             p_up     RADIOBUTTON GROUP abc,
             p_down   RADIOBUTTON GROUP abc.
DATA : gs_spfli TYPE spfli,
       gt_spfli TYPE TABLE OF spfli.

START-OF-SELECTION.

  IF p_number > 100 OR p_number < 1.
    MESSAGE 'girilen deger 1 den kucuk 100 den buyuk olamaz ' TYPE 'I' DISPLAY LIKE 'E'.
    EXIT .
  ENDIF.

  SELECT * FROM zto_sap04_spfli INTO TABLE gt_spfli WHERE carrid = p_carrid.

  IF sy-subrc NE 0.
    MESSAGE 'kayşt bulunamadi ' TYPE 'I' DISPLAY LIKE 'E'.
    EXIT .
  ENDIF.

  LOOP AT gt_spfli INTO gs_spfli.
    IF p_up = abap_true.
      ADD p_number TO gs_spfli-distance.
    ELSE.
      SUBTRACT p_number FROM gs_spfli-distance.
    ENDIF.

    UPDATE zto_sap04_spfli SET distance = gs_spfli-distance
                           WHERE carrid = gs_spfli-carrid AND
                                 connid = gs_spfli-connid.

  ENDLOOP.
