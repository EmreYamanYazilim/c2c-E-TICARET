<?php

require_once 'header.php';


?>

<head>
    <style type="text/css">

        input {

            margin-left: 20px !important;

        }

    </style>


</head>


<div class="pagination-area bg-secondary">
    <div class="container">
        <div class="pagination-wrapper">

        </div>
    </div>
</div>

<div class="settings-page-area bg-secondary section-space-bottom">
    <div class="container">


        <div class="row settings-wrapper">


            <?php require_once 'hesap-sidebar.php' ?>


            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">


                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">
                        <h2 class="title-section"> <?php echo $_GET['siparis_id'] ?> numaralı sipariş detayı </h2>
                        <div class="personal-info inner-page-padding">

                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Ürün Adı</th>
                                    <th scope="col">Satıcı</th>
                                    <th scope="col">fiyat</th>
                                    <th scope="col">Onay Durumu</th>

                                </tr>
                                </thead>


                                <tbody>

                                <?php
                                $siparissor = $db->prepare("SELECT urun.*,kullanici.*,siparis.*,siparis_detay.*  FROM siparis INNER JOIN siparis_detay ON siparis.siparis_id=siparis_detay.siparis_id INNER JOIN urun ON urun.urun_id=siparis_detay.urun_id INNER JOIN kullanici ON kullanici.kullanici_id=siparis_detay.kullanici_idsatici where siparis.siparis_id=:siparis_detay_id ");

                                $siparissor->execute(array(
                                    'siparis_detay_id' => $_GET['siparis_id']
                                ));


                                $say = 0;

                                while ($sipariscek = $siparissor->fetch(PDO::FETCH_ASSOC)) {
                                    $say++;


                                    $siparisdetay_onay = $sipariscek['siparisdetay_onay'];
                                    $siparisdetay_yorum = $sipariscek['siparisdetay_yorum'];
                                    $urun_id = $sipariscek['urun_id'];


                                    ?>


                                    <tr>
                                        <th scope="row"><?php echo $say ?></th>
                                        <td><?php echo $sipariscek['urun_ad'] ?></td>
                                        <td><?php echo $sipariscek['kullanici_ad'] ?></td>
                                        <td><?php echo $sipariscek['urun_fiyat'] ?></td>
                                        <td><?php
                                            if ($sipariscek['siparisdetay_onay'] == 1) { ?>

                                                <a onclick="return confirm(ürüne onay veriyorsunuz !!! /n bu işlem geri alınamaz)"
                                                   href="nedmin/netting/kullanici.php?urunonay=ok&siparisdetay_id=<?php echo $sipariscek['siparisdetay_id'] ?>&siparis_id=<?php echo $sipariscek['siparis_id'] ?>  ">
                                                    <button class="btn btn-warning"> Onay VER</button>
                                                </a>

                                            <?php } else if ($sipariscek['siparisdetay_onay'] == 2) { ?>

                                                <button class="btn btn-success"> Onaylandı</button>


                                            <?php } else if ($sipariscek['siparisdetay_onay'] == 0) { ?>

                                                <button class="btn btn-warning"> Teslim Edilmesi Bekleniyor</button>


                                            <?php } ?>

                                        </td>


                                    </tr>

                                <?php } ?>


                                </tbody>


                            </table>


                            <?php
                            if ($siparisdetay_onay == 2 and $siparisdetay_yorum == 0) {

                                ?>



                                <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal"
                                      id="personal-info-form">
                                    <div class="settings-details tab-content">
                                        <div class="tab-pane fade active in" id="Personal">
                                            <h2 class="title-section"><h3>Deneyimini yorumla ve puanla</h3>
                                                <div class="personal-info inner-page-padding">


                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label"><b>Puan</b></label>
                                                        <div class="col-sm-9">
                                                            <input type="radio" name="yorum_puan" value="1"> 1
                                                            <input type="radio" name="yorum_puan" value="2"> 2
                                                            <input type="radio" name="yorum_puan" value="3"> 3
                                                            <input type="radio" name="yorum_puan" value="4"> 4
                                                            <input type="radio" name="yorum_puan" value="5"> 5

                                                        </div>
                                                    </div>

                                                    <input type="hidden" name="urun_id" value="<?php echo $urun_id ?>">
                                                    <input type="hidden" name="siparis_id"
                                                           value="<?php echo $_GET['siparis_id'] ?>">

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label"><b>Yorumunuz</b></label>
                                                        <div class="col-sm-9">
                                                    <textarea style="height: 200px" cols="30" rows="10"
                                                              class="form-control" id="company-name" name="yorum_detay"
                                                              placeholder="yorumunuzu giriniz" type="text"></textarea>
                                                        </div>
                                                    </div>


                                                    <div class="form-group">

                                                        <div align="right" class="col-sm-12">

                                                            <button class="update-btn" name="puanyorumekle"
                                                                    id="login-update">
                                                                Yorum ve Puanı Kaydet
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>

                                    </div>

                                </form>


                            <?php } else if ($siparisdetay_onay == 2 and $siparisdetay_yorum == 1) { ?>

                                <b>daha önceden bu ürün için yorum ve puanlama yapılmıştır... </b>

                            <?php } ?>



                        </div>
                    </div>


                </div>


            </div>
        </div>
    </div>
</div>


<?php require_once 'footer.php'; ?>

pt>