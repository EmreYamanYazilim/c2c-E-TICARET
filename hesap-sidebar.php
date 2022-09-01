<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
    <ul class="settings-title">
        <li class="active"><a href="javascript:void(0)"> <b>ÜYE İŞLEMLERİ</b></a></li>

        <?php if ($kullanicicek['kullanici_magaza'] != 2) { ?>


            <li><a href="magaza-basvuru.php"> Mağaza Başvuru</a></li>

        <?php } ?>

        <li><a href="siparislerim.php">Siparişlerim</a></li>
        <li><a href="hesabim">Hesap Bilgilerim</a></li>
        <li><a href="adres-bilgileri">Adres Bilgileri</a></li>
        <li><a href="gelen-mesajlar">Gelen Mesajlar</a></li>
        <li><a href="giden-mesajlar">Giden Mesajlar</a></li>
        <li><a href="profil-resim-guncelle.php">Porfil Resmi Güncelle</a></li>
        <li><a href="sifre-guncelle">Şifre Güncelle</a></li>

    </ul>

    <hr>

    <?php if ($kullanicicek['kullanici_magaza'] == 2) { ?>

        <ul class="settings-title">
            <li class="active"><a href="javascript:void(0)"> <b>MAĞAZA İŞLEMLERİ</b></a></li>
            <li><a href="urun-ekle.php"> Ürün Ekle </a></li>
            <li><a href="urunlerim.php">Ürünlerim </a></li>
            <li><a href="yeni-siparisler">Yeni Siparişler</a></li>
            <li><a href="tamamlanan-siparisler">tamamlanan Siparişler</a></li>
            <li><a href="sifre-guncelle">Mesajlarım</a></li>



        </ul>
    <?php } ?>

</div>
