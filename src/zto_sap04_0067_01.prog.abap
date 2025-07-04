*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0067_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0067_01.

*Alıştırma-12: Yeni bir program oluşturun. Program içerisinde bir satir tanımlayın. Satirin hücreleri
*sırasıyla “İlan No”, “Kiralık”, “Satılık”, “Fiyat”, “Metrekare”, “Adres”, “Şehir” olsun. Bu satir ile ayni
*yapıya sahip bir SORTED internal tablo tanımlayın ve ID alanını unique key olarak belirleyin. Satiri kendi
*üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan sonra Insert komutu ile internal tabloya
*kaydedin. (Internal tabloyu doldururken ID sırasını rastgele belirleyelim ve Sorted internal tablonun
*mantığını görelim.) Tablonun satırlarını ekrana yazdırın.

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
      gt_table TYPE SORTED TABLE OF gty_str WITH UNIQUE KEY ilan_no.

START-OF-SELECTION.

  gs_str-ilan_no   = 1010.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 1'.
  gs_str-sehir     = 'Sehir 1'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1009.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 2'.
  gs_str-sehir     = 'Sehir 2'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1008.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 3'.
  gs_str-sehir     = 'Sehir 3'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1007.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 4'.
  gs_str-sehir     = 'Sehir 4'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1006.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 5'.
  gs_str-sehir     = 'Sehir 5'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1005.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 6'.
  gs_str-sehir     = 'Sehir 6'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1004.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 7'.
  gs_str-sehir     = 'Sehir 7'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1003.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 8'.
  gs_str-sehir     = 'Sehir 8'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1002.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 9'.
  gs_str-sehir     = 'Sehir 9'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  gs_str-ilan_no   = 1001.
  gs_str-kiralik   = abap_true.      "'X'.
  gs_str-satilik   = abap_false.     "''.
  gs_str-fiyat     = 300000.
  gs_str-metrekare = 90.
  gs_str-adres     = 'Adres 10'.
  gs_str-sehir     = 'Sehir 10'.

*  APPEND gs_str TO gt_table.
  INSERT gs_str INTO TABLE gt_table.
  CLEAR: gs_str.

  LOOP AT gt_table INTO gs_str.
    WRITE: / gs_str-ilan_no,
          gs_str-kiralik ,
          gs_str-satilik ,
          gs_str-fiyat ,
          gs_str-metrekare,
          gs_str-adres,
          gs_str-sehir.

  ENDLOOP.
