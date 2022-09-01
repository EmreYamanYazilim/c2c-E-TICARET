<?php
ob_start();
session_start();
require_once 'nedmin/netting/baglan.php';
require_once 'nedmin/production/fonksiyon.php';
//date_default_timezone_set('EUROPE/Istanbul');
//error_reporting(0);



$ayarsor = $db->prepare("SELECT * FROM ayar where ayar_id=:id ");
$ayarsor->execute(array(
    'id' => 0
));

$ayarcek = $ayarsor->fetch(PDO::FETCH_ASSOC);


if (isset($_SESSION['userkullanici_mail'])) {

    $kullanicisor = $db->prepare("SELECT * FROM kullanici where kullanici_mail=:mail ");
    $kullanicisor->execute(array(
        'mail' => $_SESSION['userkullanici_mail']
    ));

    $say = $kullanicisor->rowCount();

    $kullanicicek = $kullanicisor->fetch(PDO::FETCH_ASSOC);



    if (!isset($_SESSION['userkullanici_id'])) {

        $_SESSION['userkullanici_id'] = $kullanicicek['kullanici_id'];

    }


}


?>

<!doctype html>
<html class="no-js" lang="">
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> <?php echo $ayarcek['ayar_title'] ?> </title>
    <meta name="description" content="<?php echo $ayarcek['ayar_description'] ?>">
    <meta name="keywords" content=" <?php echo $ayarcek['ayar_keywords'] ?> ">
    <meta name="author" content="<?php echo $ayarcek['ayar_author'] ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" type="image/x-icon" href="img\favicon.png">

    <link rel="stylesheet" href="css\normalize.css">

    <link rel="stylesheet" href="css\main.css">

    <link rel="stylesheet" href="css\bootstrap.min.css">

    <link rel="stylesheet" href="css\animate.min.css">

    <link rel="stylesheet" href="css\font-awesome.min.css">

    <link rel="stylesheet" href="vendor\OwlCarousel\owl.carousel.min.css">

    <link rel="stylesheet" href="vendor\OwlCarousel\owl.theme.default.min.css">

    <link rel="stylesheet" href="css\meanmenu.min.css">

    <link rel="stylesheet" href="css\jquery.datetimepicker.css">

    <link rel="stylesheet" href="css\reImageGrid.css">

    <link rel="stylesheet" href="css\hover-min.css">

    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="css\select2.min.css">

    <script src="js\modernizr-2.8.3.min.js"></script>

    <script src="nedmin/production/ckeditor/ckeditor.js"></script>


</head>

<header>
    <div id="header2" class="header2-area right-nav-mobile">
        <div class="header-top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                        <div class="logo-area">
                            <a href="index.php"><img class="img-responsive" src="<?php echo $ayarcek['ayar_logo'] ?> "
                                                     alt="logo"></a>
                        </div>
                    </div>


                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">


                        <ul class="profile-notification">

                            <?php if (isset($_SESSION['userkullanici_mail'])) { ?>

                                <li>
                                    <div class="notify-contact"><span> Sorun mu var ?</span> Yazılımcı ile konuşmak istermsiniz: 551 597 6632
                                    </div>
                                </li>
                                <li>

                                </li>
                                <li>
                                    <div class="notify-message">
                                        <a href="#"><i class="fa fa-envelope-o"
                                                       aria-hidden="true"></i><span>




                                                 <?php


                                                 $mesajsay = $db->prepare("SELECT COUNT(mesaj_okunma) as say FROM mesaj WHERE mesaj_okunma=:id and kullanici_gel=:kullanici_id ");
                                                 $mesajsay->execute(array(
                                                     'id' => 0,
                                                     'kullanici_id' => $_SESSION['userkullanici_id']
                                                 ));

                                                 $saycek = $mesajsay->fetch(PDO::FETCH_ASSOC);

                                                 echo $saycek['say'];

                                                 ?>


                                            </span></a>
                                        <ul>


                                            <?php

                                            $mesajsor = $db->prepare("SELECT mesaj.*,kullanici.* FROM mesaj INNER JOIN kullanici ON mesaj.kullanici_gon=kullanici.kullanici_id where mesaj.kullanici_gel=:id and mesaj.mesaj_okunma=:okunma order by mesaj_okunma,mesaj_zaman DESC limit 5");
                                            $mesajsor->execute(array(

                                                'id' => $_SESSION['userkullanici_id'],
                                                'okunma' => 0

                                            ));

                                            if ($mesajsor->rowCount() == 0) { ?>
                                                <li>
                                                    <div class="notify-message-info">
                                                        <div style="color:black !important"
                                                             class="notify-message-subject">Hiç Mesajınız Yok
                                                        </div>

                                                    </div>
                                                </li>

                                            <?php }

                                            while ($mesajcek = $mesajsor->fetch(PDO::FETCH_ASSOC)) { ?>

                                                >


                                                <li>
                                                    <div class="notify-message-img">
                                                        <img class="img-responsive"
                                                             src="<?php echo $mesajcek['kullanici_magazafoto']; ?>"
                                                             alt="profile">
                                                    </div>
                                                    <div class="notify-message-info">
                                                        <div class="notify-message-sender"><?php echo $mesajcek['kullanici_ad'] . " " . $mesajcek['kullanici_soyad'] ?></div>
                                                        <div class="notify-message-subject">Mesaj Detayı</div>
                                                        <div class="notify-message-date"><?php echo $mesajcek['mesaj_zaman']; ?></div>
                                                    </div>
                                                    <div class="notify-message-sign">
                                                        <a href="mesaj-detay?mesaj_id=<?php echo $mesajcek['mesaj_id'] ?>&kullanici_gon=<?php echo $mesajcek['kullanici_gon'] ?>">
                                                            <i class="fa fa-envelope-o" aria-hidden="true"></i> </a>
                                                    </div>
                                                </li>

                                            <?php } ?>


                                        </ul>
                                    </div>
                                </li>


                            <?php } ?>


                            <?php if (isset($_SESSION['userkullanici_mail'])) { ?>

                                <li>
                                    <div class="user-account-info">
                                        <div class="user-account-info-controler">
                                            <div class="user-account-img">
                                                <img style="border-radius: 30px " height="32" width="32"
                                                     class="img-responsive"
                                                     src=" <?php echo $kullanicicek['kullanici_magazafoto'] ?>"
                                                     alt="profile">
                                            </div>
                                            <div class="user-account-title">
                                                <div class="user-account-name"> <?php echo $kullanicicek['kullanici_ad'] . " " . substr($kullanicicek['kullanici_soyad'], 0, 1) ?>
                                                    .
                                                </div>
                                                <div class="user-account-balance">

                                                    <?php


                                                    $siparissor=$db->prepare("SELECT SUM(urun_fiyat) as toplam FROM siparis_detay where kullanici_idsatici=:kullanici_id ");

                                                    $siparissor->execute(array(
                                                        'kullanici_id' => $_SESSION['userkullanici_id']
                                                    ));

                                                    $sipariscek=$siparissor->fetch(PDO::FETCH_ASSOC);

                                                    if (isset($sipariscek['toplam'])) {
                                                        echo $sipariscek['toplam']." TL";

                                                    } else {

                                                        echo "0.00 TL";
                                                    }


                                                    ?>





                                                </div>
                                            </div>
                                            <div class="user-account-dropdown">
                                                <i class="fa fa-angle-down" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <ul>


                                            <li><a href="hesabim.php">Hesap Bilgilerim</a></li>


                                        </ul>
                                    </div>
                                </li>


                                <li><a class="apply-now-btn-color" href="logout.php" id="logout-button">Çıkış</a></li>


                            <?php } else { ?>

                                <li><a class="apply-now-btn" href="login.php" id="logout-button">Üye Girişi</a></li>
                                <li><a class="apply-now-btn-color" href="register.php" id="logout-button">Kayıt</a></li>

                            <?php } ?>


                        </ul>


                    </div>
                </div>
            </div>
        </div>
        <div class="main-menu-area bg-primaryText" id="sticker">
            <div class="container">
                <nav id="desktop-nav">
                    <ul>

                        <li class="active"><a href="index.php">Anasayfa</a></li>
                        <li><a href="kategoriler">Kategoriler</a></li>

                        <?php

                        $kategorisor = $db->prepare("SELECT * FROM kategori where kategori_onecikar=:onecikar order by kategori_sira ASC");
                        $kategorisor->execute(array(
                            'onecikar' => 1
                        ));

                        while ($kategoricek = $kategorisor->fetch(PDO::FETCH_ASSOC)) { ?>


                            <li>
                                <a href="kategoriler-<?= seo($kategoricek['kategori_ad']) . "-" . $kategoricek['kategori_id'] ?>"><?php echo $kategoricek['kategori_ad'] ?></a>
                            </li>

                        <?php } ?>


                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- Mobile Menu Area Start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>


                                <?php

                                $kategorisor = $db->prepare("SELECT * FROM kategori where kategori_onecikar=:onecikar order by kategori_sira ASC");
                                $kategorisor->execute(array(
                                    'onecikar' => 1
                                ));

                                while ($kategoricek = $kategorisor->fetch(PDO::FETCH_ASSOC)) { ?>


                                    <li>
                                        <a href="kategoriler-<?= seo($kategoricek['kategori_ad']) . "-" . $kategoricek['kategori_id'] ?>"><?php echo $kategoricek['kategori_ad'] ?></a>
                                    </li>

                                <?php } ?>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>





