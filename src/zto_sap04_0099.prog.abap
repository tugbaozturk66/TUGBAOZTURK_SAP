*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0099
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0099.

*Alıştırma – 19: Yeni bir rapor oluşturun. Rapor içerisinde 3 adet parametre tanımlayın. Kullanıcıdan bir
*Fldate alin. 2 ve 3’üncü parametreler radiobutton olsun. İlki girilen tarihten büyük, ikincisi ise girilen
*tarihten küçük seklinde isimlendirilsin. Kendi oluşturduğunuz ve SFLIGHT ile ayni satir yapısına sahip
*olan database tablosunda kullanıcının girdiği Fldate bilgisinden önce veya sonra olanları (öncesinin
*veya sonrasının silineceği 2 ve 3’üncü parametrelere göre belirlenecektir) kalıcı olarak silin. (Delete)

PARAMETERS : p_carrid TYPE s_carr_id OBLIGATORY,
             p_fldate TYPE S_DATE,
             p_before RADIOBUTTON GROUP abc,
             p_after  RADIOBUTTON GROUP abc.

START-OF-SELECTION.

IF p_before = abap_true.
DELETE FROM ZTO_SAP04SFLIGHT WHERE fldate < p_fldate AND carrid = p_carrid. "carrid = p_carrid
ELSE.
DELETE FROM ZTO_SAP04SFLIGHT WHERE fldate > p_fldate AND carrid = p_carrid.
ENDIF.
