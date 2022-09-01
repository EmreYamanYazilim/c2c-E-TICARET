<?php
require_once 'header.php';


islemkontrol();

?>



<div class="pagination-area bg-secondary">
    <div class="container">
        <div class="pagination-wrapper">

        </div>
    </div>
</div>

<div class="settings-page-area bg-secondary section-space-bottom">
    <div class="container">


        <div class="row settings-wrapper">


            <?php require_once 'hesap-sidebar.php'

            ?>


            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">


                <?php

                if (isset($_GET['durum']) and ($_GET['durum'] == "ok")) { ?>

                    <div class="alert alert-success">

                        <strong>Bilgi !</strong> İşlem başarılı

                    </div>

                <?php } elseif (isset($_GET['durum']) and ($_GET['durum'] == "eskisifrehata")) { ?>

                    <div class="alert alert-danger">

                        <strong>Hata!</strong> Eski Şifre Hatalı...

                    </div>


                <?php } else if (isset($_GET['durum']) and ($_GET['durum'] == "sifreuyusmuyor")) { ?>

                    <div class="alert alert-danger">

                        <strong> Hata ! </strong> Şifreler Uyuşmuyor !

                    </div>

                <?php } else if (isset($_GET['durum']) and ($_GET['durum'] == "hata")) { ?>

                    <div class="alert alert-danger">

                        <strong> Hata ! </strong> Şifreler Uyuşmuyor !

                    </div>

                <?php } else if (isset($_GET['durum']) and ($_GET['durum'] == "6")) { ?>

                    <div class="alert alert-danger">

                        <strong> Hata ! </strong> Şifreler 6 haneden dan az olamaz !

                    </div>

                <?php } ?>


                <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal"
                      id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Şifre Güncelle</h2>
                            <div class="personal-info inner-page-padding">


                                <div class="form-group">


                                    <label class="col-sm-3 control-label"> Eski Şifrenizi Giriniz.. </label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" type="text"
                                               name="kullanici_eskipassword"
                                               placeholder="Eski Şifrenizi Giriniz">
                                    </div>
                                </div>


                                <div class="form-group">


                                    <label class="col-sm-3 control-label"> Şifrenizi Giriniz </label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" type="text"
                                               name="kullanici_passwordone"
                                               placeholder="Şifrenizi Giriniz">
                                    </div>
                                </div>


                                <div class="form-group">


                                    <label class="col-sm-3 control-label"> Şifrenizi Tekrar Giriniz </label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" type="text"
                                               name="kullanici_passwordtwo"
                                               placeholder="Şifrenizi Tekrar Giriniz">
                                    </div>
                                </div>


                                <div class=" form-group">

                                    <div align="right" class="col-sm-12">

                                        <button class="update-btn" name="musterisifreguncelle"
                                                id="login-update">
                                            Bilgileri Güncelle
                                        </button>
                                    </div>
                                </div>


                            </div>


                        </div>

                    </div>

                </form>
            </div>
        </div>
    </div>
</div>


<?php
require_once 'footer.php';

?>
