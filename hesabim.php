<?php
require_once 'header.php';


islemkontrol();

?>


    <!-- Main Banner 1 Area Start Here -->

    <!-- Main Banner 1 Area End Here -->
    <!-- Inner Page Banner Area Start Here -->
    <div class="pagination-area bg-secondary">
        <div class="container">
            <div class="pagination-wrapper">

            </div>
        </div>
    </div>
    <!-- Inner Page Banner Area End Here -->
    <!-- Settings Page Start Here -->
    <div class="settings-page-area bg-secondary section-space-bottom">
        <div class="container">
            <div class="row settings-wrapper">


                <?php require_once 'hesap-sidebar.php'

                ?>


                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal"
                          id="personal-info-form">
                        <div class="settings-details tab-content">
                            <div class="tab-pane fade active in" id="Personal">
                                <h2 class="title-section">Hesap Bilgilerimi Düzenle</h2>
                                <div class="personal-info inner-page-padding">

                                    <?php

                                    if (isset($_GET['durum']) and ($_GET['durum'] == "basarili")) { ?>

                                        <div class="alert alert-success">
                                            <strong>Bilgi !</strong> İşlem başarılı
                                        </div>

                                    <?php } elseif (isset($_GET['durum']) and ($_GET['durum'] == "basarisiz")) { ?>

                                        <div class="alert alert-danger">
                                            <strong>Hata!</strong> İşlem başarısız
                                        </div>

                                    <?php } ?>


                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Kayıtlı E-Mail
                                            (Değiştiremezsiniz) </label>

                                        <div class="col-sm-9">
                                            <input class="form-control" id="first-name" disabled="" type="text"
                                                   value="<?php echo $kullanicicek['kullanici_mail'] ?>">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Ad</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" id="first-name" type="text" name="kullanici_ad"
                                                   value="<?php echo $kullanicicek['kullanici_ad'] ?>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Soyadı</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" id="last-name" name="kullanici_soyad"
                                                   value="<?php echo $kullanicicek['kullanici_soyad'] ?>" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Telefon</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" id="company-name" name="kullanici_gsm"
                                                   value="<?php echo $kullanicicek['kullanici_gsm'] ?>" type="text">
                                        </div>
                                    </div>


                                    <div class="form-group">

                                        <div align="right" class="col-sm-12">

                                            <button class="update-btn" name="musteribilgiguncelle" id="login-update">
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