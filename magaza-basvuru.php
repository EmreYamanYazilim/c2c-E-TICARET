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

                <?php } elseif (isset($_GET['durum']) and ($_GET['durum'] == "hata")) { ?>

                    <div class="alert alert-danger">
                        <strong>Hata!</strong> İşlem başarısız
                    </div>

                <?php } ?>


                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">


                        <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal"
                              id="personal-info-form">

                            <h2 class="title-section">Mağaza Başvurusu</h2>
                            <div class="personal-info inner-page-padding">


                                <?php if ($kullanicicek['kullanici_magaza'] == 0) { ?>


                                <b>Başvurularınızı eksiksiz şekilde ve doğru olarak doldurunuz aksi taktirde
                                    başvurularınız iptal edilebilir...</b>
                                <hr>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Kayıtlı Mail (Değiştiremezsiniz)</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" disabled="" id="first-name"
                                               value="<?php echo $kullanicicek['kullanici_mail'] ?>" type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Banka Adı</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" name="kullanici_banka"
                                               value="<?php echo $kullanicicek['kullanici_banka'] ?>" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">IBAN Numaranız</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" name="kullanici_iban"
                                               value="<?php echo $kullanicicek['kullanici_iban'] ?>" type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Ad</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" id="first-name" name="kullanici_ad"
                                               value="<?php echo $kullanicicek['kullanici_ad'] ?>" type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Soyad</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" name="kullanici_soyad"
                                               value="<?php echo $kullanicicek['kullanici_soyad'] ?>" id="last-name"
                                               type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Telefon GSM</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" name="kullanici_gsm"
                                               value="<?php echo $kullanicicek['kullanici_gsm'] ?>" id="company-name"
                                               type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Bireysel/Kurumsal</label>
                                    <div class="col-sm-9">
                                        <div class="custom-select">
                                            <select name="kullanici_tip" id="kullanici_tip" class='select2'>

                                                <option

                                                    <?php

                                                    if ($kullanicicek['kullanici_tip'] == "PERSONAL") {
                                                        echo "selected";
                                                    }
                                                    ?>

                                                        value="PERSONAL">Bireysel
                                                </option>
                                                <option <?php

                                                if ($kullanicicek['kullanici_tip'] == "PRIVATE_COMPANY") {
                                                    echo "selected";
                                                }
                                                ?> value="PRIVATE_COMPANY">Kurumsal
                                                </option>

                                            </select>
                                        </div>
                                    </div>
                                </div>


                                <div id="tc">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">T.C</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" name="kullanici_tc" id="first-name"
                                                   value="<?php echo $kullanicicek['kullanici_tc'] ?>" type="text">
                                        </div>
                                    </div>
                                </div>


                                <div id="kurumsal">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Firma Ünvan</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" name="kullanici_unvan" id="first-name"
                                                   value="<?php echo $kullanicicek['kullanici_unvan'] ?>" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Firma V.Dairesi</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" name="kullanici_vdaire" id="first-name"
                                                   value="<?php echo $kullanicicek['kullanici_vdaire'] ?>" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Firma V.No</label>
                                        <div class="col-sm-9">
                                            <input class="form-control" name="kullanici_vno" id="first-name"
                                                   value="<?php echo $kullanicicek['kullanici_vno'] ?>" type="text">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Açık Adres</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" required="" name="kullanici_adres" id="first-name"
                                               value="<?php echo $kullanicicek['kullanici_adres'] ?>" type="text">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">İl</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" required="" name="kullanici_il" id="first-name"
                                               value="<?php echo $kullanicicek['kullanici_il'] ?>" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">İlçe</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" required="" name="kullanici_ilce" id="first-name"
                                               value="<?php echo $kullanicicek['kullanici_ilce'] ?>" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Onay</label>
                                    <div class="checkbox">
                                        <div class="col-sm-9">
                                            <label><input type="checkbox" required="" value="">Kullanım şartlarını kabul
                                                ediyorum</label>
                                        </div>
                                    </div>
                                </div>

                                <div class=" form-group">

                                    <div align="right" class="col-sm-12">

                                        <button class="update-btn" name="musterimagazabasvuru"
                                                id="login-update">
                                            Başvuruyu Tamamla
                                        </button>
                                    </div>


                                    <?php } else if ($kullanicicek['kullanici_magaza'] == 1) { ?>


                                        <div class="alert alert-success"> BAŞVURUNUZ ONAY AŞAMASINDA...</div>

                                    <?php } else if ($kullanicicek['kullanici_magaza'] == 2) { ?>


                                        <div class="alert alert-success"> BAŞVURUNUZ ONAYLANMIŞTIR AŞAĞIDAKİ LİNKTEN
                                            ADMİN MENÜSÜNE GİRİŞ YAPABİLİRSİNİZ
                                        </div>

                                    <?php } ?>

                                </div>


                            </div>

                        </form>

                    </div>


                </div>
            </div>
        </div>
    </div>


    <?php
    require_once 'footer.php';

    ?>

    <script type="text/javascript">

        $(document).ready(function () {

            $("#kullanici_tip").change(function () {

                var tip = $("#kullanici_tip").val();

                if (tip == "PERSONAL") {

                    $("#kurumsal").hide();
                    $("#tc").show();

                } else if (tip == "PRIVATE_COMPANY") {

                    $("#kurumsal").show();
                    $("#tc").hide();


                }


            }).change();


        });


    </script>
