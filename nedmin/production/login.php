<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Emre admin Panel </title>

  <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
  <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

  <link href="../build/css/custom.min.css" rel="stylesheet">
</head>

<body  class="login">
  <div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
      <div class="animate form login_form">
        <section class="login_content">
         

          <form action="../netting/islem.php" method="POST">


            <h1>Yönetim Paneli </h1>
            
            <div>
              <input type="text" name="kullanici_mail" class="form-control" placeholder="Kullanıcı Adınız (Mail)" required="" />
            </div>
            <div>
              <input type="password" name="kullanici_password" class="form-control" placeholder="Şifreniz" required="" />
            </div>
            <div>
            <button style="width: 100%; background-color: #73879C; color:white;" type="submit" name="admingiris" class="btn btn-default"> Giriş Yap</button>
              
            </div>

            <div class="clearfix"></div>

            <div class="separator">
              <p class="change_link">

             <?php

             if (isset($_GET['durum']) and ($_GET['durum']=="no")) {
             
             echo "Kullanıcı Bulunamadı...";

             } elseif (isset($_GET['durum']) and ($_GET['durum']=="exit")) {
             
             echo "Başarıyla Çıkış Yaptınız.";

             }

             ?>
               
              </p>

              <div class="clearfix"></div>
              <br />

              <div>
                <h1><i class="fa fa-paw"></i> Sipariş Panel</h1>
                <p> Emre YAMAN PANEL</p>
              </div>
            </div>
          </form>



        </section>
      </div>

    </div>
  </div>
</body>
</html>
