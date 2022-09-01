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

                <?php } ?>


                <form action="nedmin/netting/adminislem.php" enctype="multipart/form-data" method="POST"
                      class="form-horizontal"
                      id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Profil Resim Güncelle</h2>
                            <div class="personal-info inner-page-padding">


                                <div class="form-group">
                                    <label class="col-sm-3 control-label"> Mevcut Resim </label>
                                    <div class="col-sm-9">
                                        <img width="128" height="128"
                                             src=" <?php echo $kullanicicek['kullanici_magazafoto'] ?>  " alt="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label"> Profil Resmi Seçiniz </label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" type="file" required=""
                                               name="kullanici_magazafoto"


                                    </div>
                                </div>


                                <input type="hidden" name="eski_yol"
                                       value="<?php echo $kullanicicek['kullanici_magazafoto'] ?>">


                                <div class=" form-group">

                                    <div align="right" class="col-sm-12">

                                        <button class="update-btn" name="kullaniciresimguncelle"
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
