<?php


if (basename($_SERVER['PHP_SELF']) == basename(__FILE__)) {

    exit("Bu sayfaya erişim yasak");

}

?>


<div class="inner-banner-area">
    <div class="container">
        <div class="inner-banner-wrapper">
            <p> Aradığınız Ürün yada Hizmeti Giriniz...</p>
            <div class="banner-search-area input-group">
                <input class="form-control" placeholder="ne ariyorsunuz . . ." type="text">
                <span class="input-group-addon">
                                <button type="submit">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
            </div>
        </div>
    </div>
</div>