*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0088
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_sap04_0088.

*Alıştırma – 8: Yeni bir rapor oluşturun. Rapor içerisinde 1 adet parametre tanımlayın. Kullanıcıdan bir
*uçuş şirketi bilgisi (carrid) alin. Gelen bilgi doğrultusunda rapor içerisinde SCARR, SPFLI ve SFLIGHT
*database tablolarından uçuş şirketi kullanıcının girdiği ile ayni olan satırları çekerek ekrana yazdırın.

PARAMETERS p_carrid TYPE s_carr_id.
DATA : gt_scarr   TYPE TABLE OF scarr,
       gt_spfli   TYPE TABLE OF spfli,
       gt_sflight TYPE TABLE OF sflight,
       gs_scarr   TYPE scarr,
       gs_spfli   TYPE spfli,
       gs_sflight TYPE sflight.

START-OF-SELECTION.

  SELECT * FROM scarr INTO TABLE gt_scarr WHERE carrid = p_carrid.
  SELECT * FROM spfli INTO TABLE gt_spfli WHERE carrid = p_carrid.
  SELECT * FROM sflight INTO TABLE gt_sflight WHERE carrid = p_carrid.

  READ TABLE gt_scarr INTO gs_scarr INDEX 1.
  IF sy-subrc = 0.
    WRITE :'SCARR tabldan gelen veri: ',
           / gs_scarr-carrid,
             gs_scarr-carrname,
             gs_scarr-currcode,
             gs_scarr-url.
    SKIP.

  ENDIF.
  SKIP.
  WRITE : 'SPFLI tablosundan gelen veri'.
  SKIP.

  LOOP AT gt_spfli INTO gs_spfli.
    WRITE:     gs_spfli-carrid,
               gs_spfli-connid,
               gs_spfli-airpfrom,
               gs_spfli-airpto,
               gs_spfli-arrtime,
               gs_spfli-cityfrom,
               gs_spfli-cityto,
               gs_spfli-countryfr,
               gs_spfli-countryto,
               gs_spfli-deptime,
               gs_spfli-distance,
               gs_spfli-distid,
               gs_spfli-fltime,
               gs_spfli-period.

    CLEAR :  gs_spfli.
    SKIP.

  ENDLOOP.

  SKIP.

  WRITE : 'SFLIGHT tablosundan gelen veri'.

  SKIP.

  LOOP AT gt_sflight INTO gs_sflight.

    WRITE:    gs_sflight-carrid,
              gs_sflight-connid,
              gs_sflight-currency,
              gs_sflight-fldate,
              gs_sflight-paymentsum,
              gs_sflight-planetype,
              gs_sflight-price,
              gs_sflight-seatsmax,
              gs_sflight-seatsmax_b,
              gs_sflight-seatsmax_f,
              gs_sflight-seatsocc,
              gs_sflight-seatsocc_b,
              gs_sflight-seatsocc_f.

    CLEAR : gs_sflight .
    SKIP.

  ENDLOOP.
