*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0057
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0057.

*Alıştırma -3: Yeni bir program oluşturun. 2 adet parametre tanımlayın ve kullanıcıdan 1 ile 10 arasında
*iki sayı alin. Program içerisinde bir satir tanımlayın. Satirin hücreleri sırasıyla “Öğrenci ID”, “Öğrenci
*Adi”, “Öğrenci Soyadı”, “Ders”, “Alınan Not” ve “Basari Durumu” olsun. Bu satir ile ayni yapıya sahip
*bir internal tablo tanımlayın. Satiri kendi üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan
*sonra Append komutu ile internal tabloya kaydedin. Daha sonra secim ekranından (selection screen)
*gelecek bilgiye göre internal tabloda loop ederek parametrelerden gelen ilk sayıdan ikinci sayıya kadar
*olan satırları okuyun ve ekrana yazdırın. (Kullanıcı 4 ve 8 sayılarını girdiyse internal tablonun 4, 5, 6, 7
*ve 8’inci satırları okunup ekrana yazdırılacak.) (Parametre için selection screen oluşturun ve başlığını
*tanımlayın).


PARAMETERS: p_from TYPE i,
            p_to   TYPE i.

TYPES: BEGIN OF gty_str,
         ogr_id     TYPE n LENGTH 5,
         ogr_adi    TYPE c LENGTH 30,
         ogr_soyadi TYPE c LENGTH 30,
         ders       TYPE c LENGTH 15,
         not        TYPE i,
         durum      TYPE c LENGTH 10,
       END OF gty_str.

DATA: gs_str    TYPE gty_str,
      gt_table  TYPE TABLE OF gty_str,
      gv_number TYPE i.

START-OF-SELECTION.

  IF p_to < p_from.
    MESSAGE 'Girilen ikinci sayi birinci sayiya esit ve birinci sayidan büyük olmalidir' TYPE 'S' DISPLAY LIKE 'E'.
    EXIT.
  ENDIF.

  gs_str-ogr_id     = 12345.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12348.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12347.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12346.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12355.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12354.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12352.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12353.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12351.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12356.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarili'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  DESCRIBE TABLE gt_table LINES gv_number.

  IF p_from <= gv_number.
    LOOP AT gt_table INTO gs_str FROM p_from TO p_to.
      WRITE: gs_str-ogr_id,
         gs_str-ogr_adi,
         gs_str-ogr_soyadi,
         gs_str-ders,
         gs_str-not,
         gs_str-durum.

      SKIP.
    ENDLOOP.

  ELSE.
    MESSAGE 'Verilen aralikta satir bulunamamistir' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.



*  IF sy-subrc IS NOT INITIAL.
*    MESSAGE 'Verilen aralikta satir bulunamamistir' TYPE 'S' DISPLAY LIKE 'E'.
*  ENDIF.
