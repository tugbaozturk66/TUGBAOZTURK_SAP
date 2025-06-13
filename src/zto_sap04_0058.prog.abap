*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0058
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0058.
*Alıştırma -4: Yeni bir program oluşturun. 3 adet Radiobutton oluşturun. Bu Radiobuttonlar “Sadece
*Başarılı Olanlar”, “Sadece Basarisiz Olanlar” ve “Hepsi” seklinde olsun. Program içerisinde bir satir
*tanımlayın. Satirin hücreleri sırasıyla “Öğrenci ID”, “Öğrenci Adı”, “Öğrenci Soyadı”, “Ders”, “Alınan
*Not” ve “Basari Durumu” olsun. Bu satir ile ayni yapıya bir internal tablo tanımlayın. Satiri 10 kere
*doldurun ve her doldurmadan sonra Append komutu ile internal tabloya kaydedin. Daha sonra secim
*ekranından (selection screen) gelecek bilgiye göre internal tabloda loop ederek istenen satırları ekrana
*yazdırın. (Parametreler için selection screen oluşturun ve başlığını tanımlayın). (Loop where)

PARAMETERS: p_basrli RADIOBUTTON GROUP abc,
            p_basrsz RADIOBUTTON GROUP abc,
            p_hepsi  RADIOBUTTON GROUP abc.


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
  gs_str-durum      = 'Basarisiz'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12347.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarisiz'.

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
  gs_str-durum      = 'Basarisiz'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ogr_id     = 12353.
  gs_str-ogr_adi    = 'Mehmet'.
  gs_str-ogr_soyadi = 'Öztürk'.
  gs_str-ders       = 'Matematik'.
  gs_str-not        = 90.
  gs_str-durum      = 'Basarisiz'.

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
  gs_str-durum      = 'Basarisiz'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  IF p_basrli = abap_true.
    DELETE gt_table WHERE durum = 'Basarisiz'.

  ELSEIF p_basrsz = abap_true.

    DELETE gt_table WHERE durum = 'Basarili'.
  ENDIF.

  LOOP AT gt_table INTO gs_str.
    WRITE: gs_str-ogr_id,
       gs_str-ogr_adi,
       gs_str-ogr_soyadi,
       gs_str-ders,
       gs_str-not,
       gs_str-durum.

    SKIP.
  ENDLOOP.
