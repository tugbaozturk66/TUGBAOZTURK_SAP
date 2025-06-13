*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0055
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0055.

*Alıştırma -1: Yeni bir program oluşturun. 1 adet parametre tanımlayın ve kullanıcıdan 1 ile 10 arasında
*bir sayı alin. Program içerisinde bir satir tanımlayın. Satirin hücreleri sırasıyla “Öğrenci ID”, “Öğrenci
*Adi”, “Öğrenci Soyadı”, “Ders”, “Alınan Not” ve “Basari Durumu” olsun. Bu satir ile ayni yapıya sahip
*bir internal tablo tanımlayın. Satiri kendi üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan
*sonra Append komutu ile internal tabloya kaydedin. Daha sonra secim ekranından (selection screen)
*gelecek bilgiye göre internal tabloyu Read Table komutu ile okuyun ve ekrana yazdırın. (Kullanıcı 4
*girdiyse internal tablonun 4. Satiri Read Table komutu ile okunup ekrana yazdırılacak) (Parametre için
*selection screen oluşturun ve başlığını tanımlayın).

PARAMETERS: p_int TYPE i.

TYPES: BEGIN OF gty_str,
         ogr_id     TYPE n LENGTH 5,
         ogr_adi    TYPE c LENGTH 30,
         ogr_soyadi TYPE c LENGTH 30,
         ders       TYPE c LENGTH 15,
         not        TYPE i,
         durum      TYPE c LENGTH 10,
       END OF gty_str.

DATA: gs_str   TYPE gty_str,
      gt_table TYPE TABLE OF gty_str.

START-OF-SELECTION.

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

  READ TABLE gt_table INTO gs_str INDEX p_int.

  IF sy-subrc = 0.
    WRITE: gs_str-ogr_id,
           gs_str-ogr_adi,
           gs_str-ogr_soyadi,
           gs_str-ders,
           gs_str-not,
           gs_str-durum.

  ELSE.

    MESSAGE 'Aradiginiz satir bulunamamistir' TYPE 'S' DISPLAY LIKE 'E'.

  ENDIF.
