<?php

require_once 'header.php';

?>


    <body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

    <!-- Add your site or application content here -->
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <!-- Main Body Area Start Here -->
<div id="wrapper">


    <!-- Main Banner 1 Area Start Here -->
    <div class="main-banner2-area">
        <div class="container">
            <div class="main-banner2-wrapper">
                <h1> Satıcılarla Buluşma Platformuna Hoşgeldiniz</h1>
                <p> Ürün , Kalite ve Hizmet arttırmak için doğru yerdesiniz</p>

                <form action="arama-detay.php" method="POST">
                    <div class="banner-search-area input-group">
                        <input class="form-control" name="searchkeyword"
                               placeholder="Aramak İçin Anahtar Kelimeyi Girin . . ." required="" minlength="3"
                               type="text">
                        <span class="input-group-addon">
                                <button type="submit" name="searchsayfa">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                    </div>
                </form>
            </div>
        </div>
    </div>


<?php require_once 'cok-satanlar.php' ?>


    <div class="newest-products-area bg-secondary section-space-default">
    <div class="container">
        <h2 class="title-default">Öne Çıkan Ürünler</h2>
    </div>
    <div class="container-fluid" id="isotope-container">
        <div class="isotope-classes-tab isotop-box-btn-white">


        </div>

        <div class="row featuredContainer">

            <?php
            $urunsor = $db->prepare("SELECT urun.urun_ad,urun.kategori_id,urun.urun_id,urun.urun_fiyat,urun.urunfoto_resimyol,urun.kullanici_id,urun.urun_durum,urun.urun_onecikar,kategori.kategori_id,kategori.kategori_ad,kullanici.kullanici_id,kullanici.kullanici_ad,kullanici.kullanici_soyad,kullanici.kullanici_magazafoto FROM urun INNER JOIN kategori ON urun.kategori_id=kategori.kategori_id INNER JOIN kullanici ON urun.kullanici_id=kullanici.kullanici_id where urun_onecikar=:onecikar and urun_durum=:durum order by urun_zaman,urun_onecikar DESC limit 8");
            $urunsor->execute(array(
                'onecikar' => 1,
                'durum' => 1
            ));


            while ($uruncek = $urunsor->fetch(PDO::FETCH_ASSOC)) { ?>


                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 yenigelen plugins component">
                    <div class="single-item-grid">
                        <div class="item-img">
                            <a href="urun-<?= seo($uruncek['urun_ad']) . "-" . $uruncek['urun_id'] ?>"> <img
                                        src="<?php echo $uruncek['urunfoto_resimyol'] ?>" alt="product"
                                        class="img-responsive"> </a>
                            <div class="trending-sign" data-tips="Öne Çıkan Ürün"><i class="fa fa-bolt"
                                                                                     aria-hidden="true"></i></div>
                        </div>
                        <div class="item-content">
                            <div class="item-info">
                                <h3><a href="#"> <?php echo $uruncek['urun_ad'] ?> </a></h3>
                                <span> <a href="kategoriler-<?= seo($uruncek['kategori_ad']) . "-" . $uruncek['kategori_id'] ?>"> <?php echo $uruncek['kategori_ad'] ?> </a> </span>
                                <div class="price"><?php echo $uruncek['urun_fiyat'] ?> TL</div>
                            </div>
                            <div class="item-profile">
                                <div class="profile-title">
                                    <div class="img-wrapper"><img style="height: 38px; height: 38px "
                                                                  src="<?php echo $uruncek['kullanici_magazafoto'] ?>"
                                                                  alt="profile" class="img-responsive img-circle"></div>
                                    <span><?php echo $uruncek['kullanici_ad'] . " " . $uruncek['kullanici_soyad'] ?></span>
                                </div>
                                <div class="profile-rating">
                                    <a href="#">Tüm Ürünleri</a>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            <?php } ?>


        </div>
    </div>

    <div class="why-choose-area bg-primaryText section-space-default">
        <div class="container">
            <h2 class="title-textPrimary">Why You Choose Foxtar Market Place?</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="why-choose-box">
                        <a href="#"><i class="fa fa-gift" aria-hidden="true"></i></a>
                        <h3><a href="#">Easily Buy & Sell </a></h3>
                        <p>Dorem Ipsum is simply dummy text of the pring and typesetting industry. Lorem Ipsum has been
                            the industry's standaum.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="why-choose-box">
                        <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
                        <h3><a href="#">Quality Products</a></h3>
                        <p>Dorem Ipsum is simply dummy text of the pring and typesetting industry. Lorem Ipsum has been
                            the industry's standaum.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="why-choose-box">
                        <a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a>
                        <h3><a href="#">100% Secure Payment</a></h3>
                        <p>Dorem Ipsum is simply dummy text of the pring and typesetting industry. Lorem Ipsum has been
                            the industry's standaum.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Why Choose Area End Here -->

    <!-- Author Banner Area Start Here -->
    <div class="author-banner-area">
        <div class="author-banner-wrapper">
            <div id="ri-grid" class="author-banner-bg ri-grid header text-center">
                <ul class="ri-grid-list">
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\4.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\4.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="img\banner\9.jpg" alt=""></a></li>
                </ul>
            </div>
            <div class="author-banner-content">
                <ul>
                    <li><p>Over <span> 20,000</span> Author Are Involved Here!</p></li>
                    <li><a href="#" class="btn-fill-textPrimary">Become A Author</a></li>
                </ul>
            </div>
        </div>
    </div>

<?php

require_once 'footer.php';

?>