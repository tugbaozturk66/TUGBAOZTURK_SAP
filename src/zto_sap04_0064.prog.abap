*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0064
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0064.
*Alıştırma -9: Yeni bir program oluşturun. 1 adet parametre tanımlayın ve kullanıcıdan 1 “ilan No” alin.
*Program içerisinde bir satir tanımlayın. Satirin hücreleri sırasıyla “Ilan No”, “Kiralık”, “Satılık”, “Fiyat”,
*“Metrekare”, “Adres”, “Şehir” olsun. Bu satir ile ayni yapıya sahip bir internal tablo tanımlayın. Satiri
*kendi üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan sonra Append komutu ile internal
*tabloya kaydedin. Daha sonra kullanıcıdan gelen ilan No hangi satıra karşılık geliyorsa o satirin kaçıncı
*satir olduğunu tespit edin ve sonrasında o satiri silin. Silinen satirin kaçıncı satir olduğunu ekrana
*yazdırın. Tablonun kalan satırlarını ekrana yazdırın. (Parametreler için selection screen oluşturun ve
*başlığını tanımlayın).

TYPES: BEGIN OF gty_str,
         ilan_no   TYPE n LENGTH 4,
         kiralik   TYPE c LENGTH 1,
         satilik   TYPE c LENGTH 1,
         fiyat     TYPE i,
         metrekare TYPE i,
         adres     TYPE string,
         sehir     TYPE c LENGTH 20,
       END OF gty_str.

DATA: gs_str   TYPE gty_str,
      gt_table TYPE TABLE OF gty_str,
      gv_msg   TYPE string,
      gv_tabix TYPE string.

PARAMETERS: p_ilan TYPE n LENGTH 4.

START-OF-SELECTION.

  gs_str-ilan_no   = 1001.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 1'.
  gs_str-sehir     = 'Sehir 1'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1002.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 2'.
  gs_str-sehir     = 'Sehir 2'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1003.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 3'.
  gs_str-sehir     = 'Sehir 3'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1004.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 4'.
  gs_str-sehir     = 'Sehir 4'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1005.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 5'.
  gs_str-sehir     = 'Sehir 5'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1006.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 6'.
  gs_str-sehir     = 'Sehir 6'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1007.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 7'.
  gs_str-sehir     = 'Sehir 7'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1008.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 8'.
  gs_str-sehir     = 'Sehir 8'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1009.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 9'.
  gs_str-sehir     = 'Sehir 9'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1010.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 10'.
  gs_str-sehir     = 'Sehir 10'.

  APPEND gs_str TO gt_table.
  CLEAR: gs_str.

  READ TABLE gt_table INTO gs_str WITH KEY ilan_no = p_ilan.

  IF sy-subrc IS INITIAL. "Okuma islemi basariliysa

    DELETE gt_table INDEX sy-tabix.

    gv_tabix = sy-tabix.

    gv_msg = 'Silinen satirin sayisi: '.

*    CONCATENATE gv_msg gv_tabix INTO gv_msg SEPARATED BY space.

*    MESSAGE gv_msg TYPE 'I'.

    WRITE: gv_msg, sy-tabix.
  ENDIF.

  LOOP AT gt_table INTO gs_str.

    WRITE: gs_str-ilan_no,
           gs_str-kiralik,
           gs_str-satilik,
           gs_str-fiyat,
           gs_str-metrekare,
           gs_str-adres,
           gs_str-sehir.

    SKIP.

  ENDLOOP.
