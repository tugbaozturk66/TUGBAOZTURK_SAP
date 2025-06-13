*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0090
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0090.

*Alıştırma – 10: Yeni bir rapor oluşturun. Rapor içerisinde 1 adet parametre tanımlayın. Kullanıcıdan
*bir uçuş şirketi bilgisi (carrid) alin. Gelen bilgi doğrultusunda rapor içerisinde SFLIGHT tablosunda uçuş
*şirketi kullanıcının girdiği ile ayni olan satırları çekin. Okunan tüm satırlar içerisindeki toplam koltuk
*sayısını ve satılan koltuk sayısını hesaplayın ve kullanıcıya information mesajı verin. (Seatsmax ve
*Seatsocc kolonları önemli)

PARAMETERS : p_carrid TYPE S_CARR_ID.

DATA : gs_sflight TYPE sflight,
       gt_sflight TYPE TABLE OF sflight,
       gv_koltuk_max TYPE n LENGTH 6,
       gv_koltuk_occ TYPE n LENGTH 6,
       gv_message TYPE string.

SELECT * FROM sflight INTO TABLE gt_sflight WHERE carrid = p_carrid.

LOOP AT gt_sflight INTO gs_sflight.
 ADD gs_sflight-seatsmax TO gv_koltuk_max.
 ADD gs_sflight-seatsocc TO gv_koltuk_occ.

ENDLOOP.

CONCATENATE 'toplam koltuk sayisi: '  gv_koltuk_max 'satilan koltuk sayisi' gv_koltuk_occ INTO gv_message SEPARATED BY space.

MESSAGE : gv_message TYPE 'I' DISPLAY LIKE 'E'.
