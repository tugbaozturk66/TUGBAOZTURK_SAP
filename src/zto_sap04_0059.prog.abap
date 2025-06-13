*&---------------------------------------------------------------------*
*& Report ZTO_SAP04_0059
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTO_SAP04_0059.

*Alıştırma -5: Yeni bir program oluşturun. 5 adet parametre tanımlayın. Parametreler yardımıyla
*kullanıcıdan “Alışveriş Yeri”, “Alınan Ürün”, “Ödenen Miktar”, “Ödeme Yapılan Para Birimi”, “Alışveriş
*Tarihi” ve “Alışveriş Saati” bilgilerini alin. Rapor içerisinde bu bilgilerin tamamını içerisinde tutabilecek
*bir structure (satir) oluşturun. Structure ile ayni yapıya sahip standard bir internal tablo oluşturun.
*Parametrelerdeki veriyi önce structure içine atin. Daha sonra DO_ENDDO komutu yardımıyla ayni satiri
*internal tablo içerisine 10 kere kaydedin (Append). LOOP-ENDLOOP kullanarak tabloyu ekrana
*yazdırın. (Parametreler için selection screen oluşturun ve başlığını tanımlayın).

PARAMETERS: p_avyri TYPE c LENGTH 20,
            p_urun  TYPE c LENGTH 20,
            p_fiyat TYPE p DECIMALS 2,
            p_birim TYPE c LENGTH 3,
            p_tarih TYPE sy-datum,
            p_saat  TYPE sy-uzeit.

TYPES: BEGIN OF gty_str,
         avyri TYPE c LENGTH 20,
         urun  TYPE c LENGTH 20,
         fiyat TYPE p DECIMALS 2,
         birim TYPE c LENGTH 3,
         tarih TYPE sy-datum,
         saat  TYPE sy-uzeit,
       END OF gty_str.

DATA: gs_str   TYPE gty_str,
      gt_table TYPE TABLE OF gty_str,
      gv_fiyat TYPE p DECIMALS 2.

START-OF-SELECTION.

gv_fiyat = p_fiyat.

  DO 10 TIMES.

    gs_str-avyri  = p_avyri.
    gs_str-urun   = p_urun.
    gs_str-fiyat  = gv_fiyat.
    gs_str-birim  = p_birim.
    gs_str-tarih  = p_tarih.
    gs_str-saat   = p_saat.

    APPEND gs_str TO gt_table.
    CLEAR: gs_str.

    ADD 5 TO gv_fiyat.

  ENDDO.

  LOOP AT gt_table INTO gs_str.
    WRITE: gs_str-avyri,
           gs_str-urun,
           gs_str-fiyat,
           gs_str-birim,
           gs_str-tarih,
           gs_str-saat.

    SKIP.
  ENDLOOP.
