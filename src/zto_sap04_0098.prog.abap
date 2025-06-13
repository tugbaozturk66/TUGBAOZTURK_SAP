*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0098
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0098.

*Alıştırma – 18: Yeni bir rapor oluşturun. Rapor içerisinde 1 adet parametre tanımlayın. Kullanıcıdan bir
*Country alin. Kendi oluşturduğunuz ve SPFLI ile ayni satir yapısına sahip olan database tablosunda
*kullanıcının girdiği Country ile ayni Country bilgisine sahip olan satırları kalıcı olarak silin. (Delete)

PARAMETERS p_cntry TYPE LAND1.

START-OF-SELECTION.

DELETE FROM ZTO_SAP04_spfli WHERe countryfr = p_cntry.
