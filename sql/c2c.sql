-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Ağu 2022, 17:26:39
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `c2c`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

DROP TABLE IF EXISTS `ayar`;
CREATE TABLE IF NOT EXISTS `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`ayar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/2735628481Udemy_logo.png', 'http://www.joyakademi.com', 'Emre yaman ', 'EMRE YAMAN DENEME SÜRÜMÜ', 'udemy, c2c, eticaret', 'Udemy C2C Alıcı ve Satıcıları Buluşturan E-Ticaret', '0850 840 80 76', '0850 840 80 76', '0850 840 80 76', 'alya@hotmail.com.tr', 'İstanbul', 'Topkapı', 'Topkapı sarayı', '7 x 24 açık eticaret scripti', 'ayar_maps_api', 'ayar_analystic', 'https://v2.zopim.com/?5DyUgwL2c2nc43kG0j9udM8FLxy9XfWX', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.google.com', 'http://www.youtube.com', 'mail.emrahyuksel.com.tr', 'joyakademi@emrahyuksel.com.tr', 'password', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

DROP TABLE IF EXISTS `banka`;
CREATE TABLE IF NOT EXISTS `banka` (
  `banka_id` int(11) NOT NULL AUTO_INCREMENT,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`banka_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR98755656564564546', 'Emrah Yüksel', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Emrah Yüksel', '1'),
(3, 'Vakıfbank', 'TR455645645646546465465', 'Emrah Yüksel', '1'),
(5, 'Ziraat Bankası', 'TR45646545646awrwerwerwer', 'Emrah Yüksel', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`hakkimizda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Emre Yaman eğitim sürümü', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Phasellus viverra viverra eros, eu laoreet leo iaculis vehicula. Nunc pretium volutpat neque, finibus fermentum neque pretium vel. In hac habitasse platea dictumst. Phasellus ipsum lacus, vehicula et fringilla a, dapibus ac mi. Nulla orci tortor, fringilla eget magna in, dictum consequat lectus. Sed tincidunt purus nec erat scelerisque pretium. Aliquam vehicula lacus vel lacus varius egestas.</p><p>Vivamus eget euismod mi. Pellentesque et bibendum libero. Aliquam ullamcorper felis id nisl fermentum fringilla. Curabitur egestas condimentum lacus ut ornare. Donec vitae libero sagittis, pharetra massa ut, aliquam tellus. Proin luctus ex orci, nec pretium purus ultrices id. Nulla facilisi. Donec convallis pellentesque mauris. Suspendisse potenti. Ut viverra ex ante, vel tincidunt massa pellentesque et. Aenean rutrum ut ex facilisis vestibulum. Mauris est nibh, auctor quis efficitur et, pellentesque eu metus.</p><p>Sed auctor maximus nunc ut cursus. Sed ultrices lectus eu turpis tincidunt, id dignissim nisl mattis. Sed in risus justo. Fusce et eleifend elit. Donec sit amet sapien accumsan, ornare diam ut, pellentesque dui. Maecenas ut molestie mauris. Curabitur imperdiet enim ut feugiat vulputate. Quisque dictum dolor a risus facilisis, eu bibendum dolor aliquam. Mauris vestibulum leo mauris, sit amet blandit erat suscipit nec.</p><p>Nam facilisis sem vitae sem cursus, non ultrices dolor ullamcorper. Donec tortor massa, convallis eu tortor ornare, ornare sollicitudin tellus. Pellentesque quis interdum neque. Praesent elementum mauris sit amet nibh scelerisque bibendum. Maecenas aliquet metus lacinia elit bibendum volutpat. Vivamus eget augue eu quam consectetur venenatis. Proin rhoncus, tellus vitae tempor efficitur, eros orci maximus odio, eu rutrum sapien arcu non nisl. Donec egestas mauris eu nisl faucibus, ullamcorper dictum urna efficitur. Aliquam eu velit nisi. Etiam vitae nisi massa. Etiam a auctor felis.</p><p>Vestibulum sem erat, venenatis at blandit in, mollis ut mauris. Donec vitae neque venenatis ante fermentum auctor vel at quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ut auctor lectus, at egestas odio. Donec vestibulum nunc vitae porttitor scelerisque. Aenean non erat facilisis, finibus ex eu, commodo nulla. Pellentesque ornare, sem sit amet laoreet efficitur, sapien enim facilisis nibh, vel imperdiet nunc eros id libero. Suspendisse potenti. Nullam nec fringilla nibh. Duis sed ex a eros interdum faucibus. Duis viverra quis sem ut accumsan.</p>', 'gGXSHaER4h8', 'Emre yaman ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.', 'Emre yaman ile ilgili hakkımızda vizyon içeriği burada yer alacağından buraya vizyon verisi girilecekitir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `kategori_ust` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_onecikar`, `kategori_seourl`, `kategori_sira`, `kategori_durum`, `kategori_ust`) VALUES
(14, 'Html Template', '1', 'html-template', 1, '1', '0'),
(15, 'Php Script', '1', 'php-script', 2, '1', '0'),
(16, 'Wordpress Template', '1', 'wordpress-template', 3, '1', '0'),
(17, 'Alan Adı', '1', 'alan-adi', 4, '1', '0'),
(18, 'E-Commercee2', '1', 'e-commercee2', 5, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kullanici_id` int(11) NOT NULL AUTO_INCREMENT,
  `subMerchantKey` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_magaza` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `kullanici_magazafoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'dimg/magaza-fotoyok.png',
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_sonzaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_banka` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_iban` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tip` enum('PERSONAL','PRIVATE_COMPANY','LIMITED_OR_JOINT_STOCK_COMPANY','') COLLATE utf8_turkish_ci DEFAULT 'PERSONAL',
  `kullanici_vdaire` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_vno` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`kullanici_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `subMerchantKey`, `kullanici_magaza`, `kullanici_magazafoto`, `kullanici_zaman`, `kullanici_sonzaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_banka`, `kullanici_iban`, `kullanici_ad`, `kullanici_soyad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_tip`, `kullanici_vdaire`, `kullanici_vno`, `kullanici_yetki`, `kullanici_durum`) VALUES
(153, '', '0', 'dimg/magazafoto/28832avatar-02-jpg.jpg', '2017-07-31 11:31:57', '0000-00-00 00:00:00', '', '', '', NULL, 'EMRE', 'YAMAN', 'alya@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 's1', 'İstanbul', 'Çatalca', 'sdf', 'PERSONAL', 'sdf', 'sdf', '5', 1),
(166, '', '2', 'dimg/userphoto/62eac5d98db2a.jpg', '2017-12-08 21:51:51', '2017-12-09 23:03:57', '', '12345678910', 'Garantia', 'TR121312', 'emreee', 'yam', 'alyaa@hotmail.com', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Topkapı Sarayı 1.Avlu Çıkmazı', 'İstanbul', 'Çatalca', 'sdfz', 'PRIVATE_COMPANY', ' asda', 'asdad', '1', 1),
(170, '', '0', 'dimg/magaza-fotoyok.png', '2017-12-09 15:51:51', '0000-00-00 00:00:00', '', '', '', NULL, 'Murat', 'Sönmez', 'alici2@emrahyuksel.com.tr', '', 'dc483e80a7a0bd9ef71d8cf973673924', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(180, '', '0', 'dimg/userphoto/62f8eae176bc3.jpg', '2017-12-02 16:18:40', '2017-12-10 12:26:32', '', '12345678910', 'Garantia', 'TR121312', 'onur', 'züher', 'onur@hotmail.com', '08508408076', 'e10adc3949ba59abbe56e057f20f883e', 'Topkapı Sarayı 1.Avlu Çıkmazı', 'İstanbul', 'Çatalca', '', 'PERSONAL', '', '', '1', 1),
(181, '', '0', 'dimg/test/5a2bbf7b7a385.jpg', '2017-12-09 12:45:24', '0000-00-00 00:00:00', '', '', '', NULL, 'Ahmet', 'Korkmaz', 'alici1@emrahyuksel.com.tr', '', 'dc483e80a7a0bd9ef71d8cf973673924', '', '', '', '', 'PERSONAL', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(4, '0', 'Kategoriler', '', 'kategoriler', 3, '1', 'kategoriler'),
(11, '', 'Mesafeli satış sözleşmesi', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p>\r\n\r\n<p>BİRİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p>\r\n\r\n<p><strong>Ama&ccedil;</strong></p>\r\n\r\n<p><strong>MADDE 1 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p>\r\n\r\n<p><strong>Kapsam</strong></p>\r\n\r\n<p><strong>MADDE 2 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p>\r\n\r\n<p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p>\r\n\r\n<p>a) Finansal hizmetler,</p>\r\n\r\n<p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p>\r\n\r\n<p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p>\r\n\r\n<p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p>\r\n\r\n<p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p>\r\n\r\n<p>e) Konut kiralama,</p>\r\n\r\n<p>f) Paket turlar,</p>\r\n\r\n<p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p>\r\n\r\n<p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p>\r\n\r\n<p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p>\r\n\r\n<p>ı) Malların montaj, bakım ve onarımı,</p>\r\n\r\n<p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p>\r\n\r\n<p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p>\r\n\r\n<p><strong>Dayanak</strong></p>\r\n\r\n<p><strong>MADDE 3 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p>\r\n\r\n<p><strong>Tanımlar</strong></p>\r\n\r\n<p><strong>MADDE 4 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p>\r\n\r\n<p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p>\r\n\r\n<p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p>\r\n\r\n<p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p>\r\n\r\n<p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p>\r\n\r\n<p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p>\r\n\r\n<p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p>\r\n\r\n<p>ifade&nbsp;eder.</p>\r\n\r\n<p>İKİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 5 &ndash;</strong>&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p>\r\n\r\n<p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p>\r\n\r\n<p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p>\r\n\r\n<p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p>\r\n\r\n<p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p>\r\n\r\n<p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p>\r\n\r\n<p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p>\r\n\r\n<p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p>\r\n\r\n<p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p>\r\n\r\n<p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p>\r\n\r\n<p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p>\r\n\r\n<p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p>\r\n\r\n<p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p>\r\n\r\n<p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p>\r\n\r\n<p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p>\r\n\r\n<p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p>\r\n\r\n<p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme y&ouml;ntemi</strong></p>\r\n\r\n<p><strong>MADDE 6 &ndash;</strong>&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p>\r\n\r\n<p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p>\r\n\r\n<p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p>\r\n\r\n<p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p>\r\n\r\n<p>zorundadır.</p>\r\n\r\n<p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilerin teyidi</strong></p>\r\n\r\n<p><strong>MADDE 7 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</strong></p>\r\n\r\n<p><strong>MADDE 8 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p>\r\n\r\n<p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p>\r\n\r\n<p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p><strong>Cayma hakkı</strong></p>\r\n\r\n<p><strong>MADDE 9 &ndash;</strong>&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p>\r\n\r\n<p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p>\r\n\r\n<p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p>\r\n\r\n<p>esas&nbsp;alınır.</p>\r\n\r\n<p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p>\r\n\r\n<p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p>\r\n\r\n<p><strong>Eksik bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 10 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p>\r\n\r\n<p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımı</strong></p>\r\n\r\n<p><strong>MADDE 11 &ndash;</strong>&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p>\r\n\r\n<p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p>\r\n\r\n<p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p>\r\n\r\n<p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p>\r\n\r\n<p><strong>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 12 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p>\r\n\r\n<p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p><strong>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 13 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</strong></p>\r\n\r\n<p><strong>MADDE 14 &ndash;</strong>&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p>\r\n\r\n<p><strong>Cayma hakkının istisnaları</strong></p>\r\n\r\n<p><strong>MADDE 15 &ndash;</strong>&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Diğer H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>S&ouml;zleşmenin ifası ve teslimat</strong></p>\r\n\r\n<p><strong>MADDE 16 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p>\r\n\r\n<p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p>\r\n\r\n<p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p>\r\n\r\n<p><strong>Zarardan sorumluluk</strong></p>\r\n\r\n<p><strong>MADDE 17 &ndash;</strong>&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p>\r\n\r\n<p><strong>Telefon kullanım &uuml;creti</strong></p>\r\n\r\n<p><strong>MADDE 18 &ndash;</strong>&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p>\r\n\r\n<p><strong>İlave &ouml;demeler</strong></p>\r\n\r\n<p><strong>MADDE 19 &ndash;</strong>&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p>\r\n\r\n<p><strong>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</strong></p>\r\n\r\n<p><strong>MADDE 20 &minus;</strong>&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p>\r\n\r\n<p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>BEŞİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</strong></p>\r\n\r\n<p><strong>MADDE 21 &ndash;</strong>&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;k</strong></p>\r\n\r\n<p><strong>MADDE 22 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;tme</strong></p>\r\n\r\n<p><strong>MADDE 23 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EK</p>\r\n\r\n<p>&Ouml;RNEK CAYMA FORMU</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p>\r\n\r\n<p>g&ouml;nderilecektir.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Kime:</strong>&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Sipariş tarihi veya teslim tarihi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmet:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmetin bedeli:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adı ve soyadı:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adresi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin imzası:</strong>&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Tarih:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 20, '0', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

DROP TABLE IF EXISTS `mesaj`;
CREATE TABLE IF NOT EXISTS `mesaj` (
  `mesaj_id` int(11) NOT NULL AUTO_INCREMENT,
  `mesaj_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mesaj_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gel` int(11) NOT NULL,
  `kullanici_gon` int(11) NOT NULL,
  `mesaj_okunma` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`mesaj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesaj`
--

INSERT INTO `mesaj` (`mesaj_id`, `mesaj_zaman`, `mesaj_detay`, `kullanici_gel`, `kullanici_gon`, `mesaj_okunma`) VALUES
(25, '2017-12-09 10:33:12', '<p>Naciden Emraha 1</p>', 166, 168, '1'),
(28, '2017-12-09 10:33:34', '<p>Ahmetten Emraha 2</p>', 166, 169, '1'),
(29, '2017-12-09 10:41:09', '<p>Naber Emrah</p>', 166, 169, '1'),
(30, '2017-12-09 10:42:44', '<p>Son bildirim mesajı</p>', 166, 169, '1'),
(31, '2017-12-09 10:50:40', '<p>son bildirim mesajı 00</p>', 166, 169, '1'),
(33, '2017-12-09 11:00:52', '<p>test mesaj</p>', 166, 169, '1'),
(37, '2017-12-09 11:01:07', '<p>asdasdasd</p>', 166, 169, '1'),
(38, '2017-12-09 11:14:40', '<p>asdasdasd</p>', 166, 169, '1'),
(39, '2017-12-09 11:15:56', '<p>bildirim son kontrol</p>', 166, 169, '1'),
(41, '2017-12-09 11:16:02', '<p>bildirim son kontrol 2</p>', 166, 169, '1'),
(42, '2017-12-09 11:16:06', '<p>&nbsp;bildirim son kontrol 3</p>', 166, 169, '1'),
(43, '2017-12-09 11:16:09', '<p>bildirim son kontrol 5</p>', 166, 169, '1'),
(44, '2017-12-09 11:16:26', '<p>bildirim kontrol araya gir</p>', 166, 168, '1'),
(45, '2017-12-09 19:37:06', '<p>asdasdasd</p>', 169, 166, '0'),
(46, '2017-12-09 19:37:25', '<p>rtytry</p>', 169, 166, '0'),
(48, '2022-08-14 18:46:07', '<p>onurdan emreye mesaj</p>', 166, 180, '1'),
(49, '2022-08-14 18:48:08', '<p>onurdan emreye 2. mesaj</p>', 166, 180, '1'),
(50, '2022-08-14 18:48:40', '<p>onurdan emreye 3. mesaj</p>', 166, 180, '1'),
(52, '2022-08-15 03:48:36', '<p>deneme mesaj 1&nbsp;</p>', 166, 180, '1'),
(53, '2022-08-15 03:48:40', '<p>deneme mesaj 2&nbsp;</p>', 166, 180, '1'),
(54, '2022-08-15 03:48:43', '<p>deneme mesaj 3&nbsp;</p>', 166, 180, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

DROP TABLE IF EXISTS `sepet`;
CREATE TABLE IF NOT EXISTS `sepet` (
  `sepet_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL,
  PRIMARY KEY (`sepet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(9, 152, 17, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

DROP TABLE IF EXISTS `siparis`;
CREATE TABLE IF NOT EXISTS `siparis` (
  `siparis_id` int(11) NOT NULL AUTO_INCREMENT,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_id` int(11) NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`siparis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=750036 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `kullanici_id`, `kullanici_idsatici`, `siparis_odeme`) VALUES
(750032, '2017-11-02 12:46:45', 180, 166, '0'),
(750033, '2017-11-04 07:39:19', 158, 0, '1'),
(750034, '2017-11-04 07:56:47', 158, 0, '1'),
(750035, '2017-11-04 07:58:10', 158, 0, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

DROP TABLE IF EXISTS `siparis_detay`;
CREATE TABLE IF NOT EXISTS `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT,
  `siparis_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL,
  `siparisdetay_kargozaman` datetime NOT NULL,
  `siparisdetay_kargoad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_kargono` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_onay` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_yorum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_onayzaman` datetime NOT NULL,
  PRIMARY KEY (`siparisdetay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `kullanici_id`, `kullanici_idsatici`, `urun_id`, `urun_fiyat`, `urun_adet`, `siparisdetay_kargozaman`, `siparisdetay_kargoad`, `siparisdetay_kargono`, `siparisdetay_onay`, `siparisdetay_yorum`, `siparisdetay_onayzaman`) VALUES
(42, 750032, 180, 180, 42, 9999.00, 5, '2017-11-03 12:13:34', '', '', '2', '1', '0000-00-00 00:00:00'),
(43, 750032, 156, 153, 32, 5.00, 6, '2017-11-04 12:17:03', 'SÜRAT', '6655665656565', '0', '1', '0000-00-00 00:00:00'),
(44, 750032, 156, 157, 35, 7.00, 2, '0000-00-00 00:00:00', '', '', '0', '1', '0000-00-00 00:00:00'),
(45, 750032, 156, 157, 34, 10.00, 4, '0000-00-00 00:00:00', '', '', '0', '1', '0000-00-00 00:00:00'),
(46, 750033, 158, 153, 32, 5.00, 1, '2017-11-04 10:43:41', 'ARAS', '324234234234', '1', '0', '2017-11-04 10:52:33'),
(47, 750033, 158, 153, 49, 25.00, 1, '2017-11-04 10:43:46', 'ARAS', '234234234234', '1', '0', '2017-11-04 10:53:12'),
(48, 750034, 180, 180, 48, 5.00, 6, '2017-11-04 10:57:01', 'ARAS', 'sdfdsfsdf', '2', '1', '2017-11-04 10:57:06'),
(49, 750035, 180, 180, 44, 25.00, 5, '2017-11-04 10:58:46', 'SÜRAT', 'fghfhf', '2', '1', '0000-00-00 00:00:00'),
(50, 750032, 180, 180, 42, 9999.00, 5, '2017-11-03 12:13:34', '', '', '2', '1', '2022-08-16 09:33:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/3067331362252582652425762274502674026403slide-1.jpg', 12, '', '1'),
(4, 'Slider 2', 'dimg/slider/29538315172733129852slide-2.jpg', 2, '', '1'),
(5, 'Slider 3', 'dimg/slider/23243301742266520059slide-3.jpg', 3, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

DROP TABLE IF EXISTS `urun`;
CREATE TABLE IF NOT EXISTS `urun` (
  `urun_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urunfoto_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_satis` int(4) NOT NULL DEFAULT '0',
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`urun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kullanici_id`, `kategori_id`, `urun_zaman`, `urunfoto_resimyol`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_satis`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(39, 166, 14, '2017-12-03 13:02:51', 'dimg/urunfoto/62f0e277f0ce2.png', 'Bootstrap V9 Template İlan Scripti', 'bootstrap-v9-template-ilan-scripti', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed neque at nisl varius porta a non lectus. Vestibulum sit amet nunc turpis. In arcu nibh, facilisis sed sagittis sit amet, pretium eget felis. Vestibulum ac odio rhoncus, pulvinar nulla at, sollicitudin ex. Nulla sodales dolor at feugiat vehicula. Vestibulum sit amet convallis ex, vel feugiat ligula. Nam dapibus sagittis neque. Cras suscipit ultrices nulla vel vehicula.&lt;/p&gt;&lt;p&gt;Vestibulum nisl metus, viverra sed ex quis, vulputate lobortis tortor. Maecenas at turpis non lorem vestibulum faucibus. Vivamus efficitur fermentum justo, quis convallis lorem iaculis in. Proin eleifend diam nec mauris suscipit vulputate. Sed dolor mauris, rutrum ac imperdiet eget, efficitur eget magna. Aenean tristique lobortis enim, in aliquet nisi scelerisque non. Nam sagittis, sapien vel sagittis sollicitudin, dui ante blandit leo, nec porta dolor ex et lectus. Vestibulum varius euismod dolor ut auctor. Quisque posuere magna vel mi egestas tempor. Vivamus mollis velit id auctor interdum. Nam pulvinar eget orci nec viverra. Nunc blandit nunc vitae nisl porta, in lacinia odio volutpat. Donec et odio lorem. Nam facilisis laoreet leo sed cursus. Praesent vel nibh a purus ornare suscipit.&lt;/p&gt;&lt;p&gt;Phasellus lobortis euismod nisi dignissim congue. Sed pretium sed dui sit amet molestie. Donec dictum massa a feugiat placerat. Morbi id gravida diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat sapien sapien, nec sodales ante viverra in. Morbi faucibus felis ac cursus consectetur. Mauris posuere pharetra erat eget aliquet.&lt;/p&gt;&lt;p&gt;Morbi at nibh quis leo vulputate sagittis non vel tellus. Fusce semper lectus tortor, nec fermentum orci mattis sit amet. Duis quis lectus ullamcorper, imperdiet ligula finibus, sollicitudin dui. Sed arcu tellus, consequat vitae leo ac, viverra molestie nibh. Nunc eu nisi dolor. Fusce non lobortis tortor. Donec ut rutrum sapien. Aliquam eget nisi et sem ultricies pharetra sit amet id purus. Nam varius dapibus luctus. Praesent eget neque at ligula rutrum convallis. Praesent mollis, nulla sit amet feugiat finibus, erat purus sollicitudin nunc, nec scelerisque ante nisi vitae erat. Mauris dui ligula, aliquam eu est sit amet, viverra pulvinar enim.&lt;/p&gt;&lt;p&gt;Donec in ante est. Duis eget libero rhoncus, accumsan est a, luctus enim. Mauris eu volutpat turpis. Nullam mollis feugiat lorem, non laoreet arcu pulvinar nec. Phasellus nec egestas nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque mattis mauris diam, id aliquam quam ultrices quis. Aliquam erat volutpat. Curabitur mauris quam, consectetur a nulla id, vulputate ultricies lectus. Morbi gravida enim vel velit finibus, id venenatis erat malesuada. Morbi gravida est et tortor venenatis, ac iaculis erat feugiat. Maecenas suscipit purus velit, vitae sollicitudin massa consectetur non.&lt;/p&gt;', 259.00, 0, '', '', 0, '1', '1'),
(41, 166, 14, '2017-12-04 17:42:16', 'dimg/urunfoto/62f0e2a79de5f.jpg', ' Turizm Scripti 111', 'haber-scripti', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet, lorem non gravida viverra, metus elit laoreet augue, vel ornare felis risus in turpis. Aenean eget urna hendrerit, fringilla dui non, ultricies nisl. Vivamus ut eros id augue elementum tincidunt in et velit. Ut posuere lorem libero, non efficitur orci volutpat vitae. Vestibulum quam ex, interdum id velit eget, condimentum tempus purus. Duis vitae nisi vel eros efficitur commodo et at nulla. Donec hendrerit tortor non mi malesuada pulvinar. Pellentesque id gravida sapien. Nulla vel ex consequat, mattis diam imperdiet, interdum leo. Aliquam rhoncus lorem ipsum, nec viverra libero malesuada sed. Donec suscipit ultrices tellus vel accumsan. Praesent in auctor risus.</p><p>Mauris sodales, erat at porta commodo, velit sem lacinia sem, eget pharetra sapien risus quis velit. Maecenas sit amet venenatis mauris, nec aliquet ante. Suspendisse id leo ac ex venenatis molestie. Suspendisse fringilla nisi in enim auctor, a euismod dolor bibendum. Suspendisse eget arcu non risus ultricies sagittis id efficitur erat. Donec rutrum erat fringilla lorem consequat consectetur. Proin id lorem lorem. Duis quis tellus vitae leo porttitor fermentum. Sed vel tincidunt eros. Fusce varius, felis quis porta maximus, sem mauris pretium neque, eu lobortis nisi metus non dui.</p><p>Sed molestie dolor in diam vehicula, et egestas ligula blandit. Vivamus ultrices volutpat posuere. Proin vulputate diam et sapien ornare cursus. Ut odio nisi, lacinia non dignissim non, posuere et justo. Nulla ac pretium turpis. Ut scelerisque vitae massa a sagittis. Suspendisse potenti. Proin finibus quam odio. Phasellus aliquet, augue vel consequat efficitur, eros magna euismod risus, at porttitor enim justo a est. Praesent ante nulla, sodales nec erat bibendum, egestas sodales libero. Phasellus convallis felis ac lorem ornare, in congue leo dapibus. Nam quis turpis et tellus posuere accumsan. Aliquam volutpat sem et lorem dignissim tristique. Aenean tincidunt tortor eget placerat dapibus. Maecenas quis libero a enim sodales rhoncus.</p><p>Donec ornare magna sit amet iaculis venenatis. Duis dictum erat eu tellus congue pharetra. Etiam interdum dui ligula, id eleifend libero pellentesque a. Nunc suscipit quam et magna malesuada faucibus. Sed malesuada, mi ac aliquet lobortis, ex dolor aliquet nulla, a varius elit neque quis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis luctus ante.</p><p>Nunc fringilla, eros eget finibus fringilla, sapien sapien imperdiet orci, ut volutpat eros tortor sed ex. Phasellus dignissim elementum sem eget imperdiet. Fusce non fermentum mauris. Maecenas turpis elit, faucibus at finibus non, ultrices ac nulla. Maecenas in orci enim. Nullam vitae neque vel turpis sagittis porta eu ac tellus. Mauris venenatis, velit vel fringilla suscipit, metus massa venenatis neque, vitae dictum eros neque id lectus. Duis mi justo, aliquet in dictum in, bibendum et lorem.</p>', 59.00, 0, '', '', 0, '1', '1'),
(42, 166, 14, '2017-12-04 17:42:55', 'dimg/urunfoto/62f1413e23ea0.jpg', '  Yazilimci Emre yaman  ', 'emlak-scripti-temasi', '<p><strong>Emre Yaman 2 ay i&ccedil;inde hi&ccedil; bir bilgiye sahip olmadan&nbsp; &nbsp;HTML ve PHP yazılım dillerini &ouml;ğrenerek birinci sınıf yazılımcı formatında projesini hazırlamıştır...</strong></p>', 9999.00, 0, '', '', 0, '1', '1'),
(44, 166, 15, '2017-12-04 17:42:16', 'dimg/urunfoto/62ed3969f1df6.jpg', 'Firma Scripti', 'haber-scripti', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet, lorem non gravida viverra, metus elit laoreet augue, vel ornare felis risus in turpis. Aenean eget urna hendrerit, fringilla dui non, ultricies nisl. Vivamus ut eros id augue elementum tincidunt in et velit. Ut posuere lorem libero, non efficitur orci volutpat vitae. Vestibulum quam ex, interdum id velit eget, condimentum tempus purus. Duis vitae nisi vel eros efficitur commodo et at nulla. Donec hendrerit tortor non mi malesuada pulvinar. Pellentesque id gravida sapien. Nulla vel ex consequat, mattis diam imperdiet, interdum leo. Aliquam rhoncus lorem ipsum, nec viverra libero malesuada sed. Donec suscipit ultrices tellus vel accumsan. Praesent in auctor risus.&lt;/p&gt;&lt;p&gt;Mauris sodales, erat at porta commodo, velit sem lacinia sem, eget pharetra sapien risus quis velit. Maecenas sit amet venenatis mauris, nec aliquet ante. Suspendisse id leo ac ex venenatis molestie. Suspendisse fringilla nisi in enim auctor, a euismod dolor bibendum. Suspendisse eget arcu non risus ultricies sagittis id efficitur erat. Donec rutrum erat fringilla lorem consequat consectetur. Proin id lorem lorem. Duis quis tellus vitae leo porttitor fermentum. Sed vel tincidunt eros. Fusce varius, felis quis porta maximus, sem mauris pretium neque, eu lobortis nisi metus non dui.&lt;/p&gt;&lt;p&gt;Sed molestie dolor in diam vehicula, et egestas ligula blandit. Vivamus ultrices volutpat posuere. Proin vulputate diam et sapien ornare cursus. Ut odio nisi, lacinia non dignissim non, posuere et justo. Nulla ac pretium turpis. Ut scelerisque vitae massa a sagittis. Suspendisse potenti. Proin finibus quam odio. Phasellus aliquet, augue vel consequat efficitur, eros magna euismod risus, at porttitor enim justo a est. Praesent ante nulla, sodales nec erat bibendum, egestas sodales libero. Phasellus convallis felis ac lorem ornare, in congue leo dapibus. Nam quis turpis et tellus posuere accumsan. Aliquam volutpat sem et lorem dignissim tristique. Aenean tincidunt tortor eget placerat dapibus. Maecenas quis libero a enim sodales rhoncus.&lt;/p&gt;&lt;p&gt;Donec ornare magna sit amet iaculis venenatis. Duis dictum erat eu tellus congue pharetra. Etiam interdum dui ligula, id eleifend libero pellentesque a. Nunc suscipit quam et magna malesuada faucibus. Sed malesuada, mi ac aliquet lobortis, ex dolor aliquet nulla, a varius elit neque quis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis luctus ante.&lt;/p&gt;&lt;p&gt;Nunc fringilla, eros eget finibus fringilla, sapien sapien imperdiet orci, ut volutpat eros tortor sed ex. Phasellus dignissim elementum sem eget imperdiet. Fusce non fermentum mauris. Maecenas turpis elit, faucibus at finibus non, ultrices ac nulla. Maecenas in orci enim. Nullam vitae neque vel turpis sagittis porta eu ac tellus. Mauris venenatis, velit vel fringilla suscipit, metus massa venenatis neque, vitae dictum eros neque id lectus. Duis mi justo, aliquet in dictum in, bibendum et lorem.&lt;/p&gt;', 59.00, 0, '', '', 0, '1', '1'),
(45, 166, 14, '2017-12-03 13:02:51', 'dimg/urunfoto/62ed399c53dc4.jpg', 'Havayolu Acentesi Scripti', 'bootstrap-v9-template-ilan-scripti', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed neque at nisl varius porta a non lectus. Vestibulum sit amet nunc turpis. In arcu nibh, facilisis sed sagittis sit amet, pretium eget felis. Vestibulum ac odio rhoncus, pulvinar nulla at, sollicitudin ex. Nulla sodales dolor at feugiat vehicula. Vestibulum sit amet convallis ex, vel feugiat ligula. Nam dapibus sagittis neque. Cras suscipit ultrices nulla vel vehicula.&lt;/p&gt;&lt;p&gt;Vestibulum nisl metus, viverra sed ex quis, vulputate lobortis tortor. Maecenas at turpis non lorem vestibulum faucibus. Vivamus efficitur fermentum justo, quis convallis lorem iaculis in. Proin eleifend diam nec mauris suscipit vulputate. Sed dolor mauris, rutrum ac imperdiet eget, efficitur eget magna. Aenean tristique lobortis enim, in aliquet nisi scelerisque non. Nam sagittis, sapien vel sagittis sollicitudin, dui ante blandit leo, nec porta dolor ex et lectus. Vestibulum varius euismod dolor ut auctor. Quisque posuere magna vel mi egestas tempor. Vivamus mollis velit id auctor interdum. Nam pulvinar eget orci nec viverra. Nunc blandit nunc vitae nisl porta, in lacinia odio volutpat. Donec et odio lorem. Nam facilisis laoreet leo sed cursus. Praesent vel nibh a purus ornare suscipit.&lt;/p&gt;&lt;p&gt;Phasellus lobortis euismod nisi dignissim congue. Sed pretium sed dui sit amet molestie. Donec dictum massa a feugiat placerat. Morbi id gravida diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat sapien sapien, nec sodales ante viverra in. Morbi faucibus felis ac cursus consectetur. Mauris posuere pharetra erat eget aliquet.&lt;/p&gt;&lt;p&gt;Morbi at nibh quis leo vulputate sagittis non vel tellus. Fusce semper lectus tortor, nec fermentum orci mattis sit amet. Duis quis lectus ullamcorper, imperdiet ligula finibus, sollicitudin dui. Sed arcu tellus, consequat vitae leo ac, viverra molestie nibh. Nunc eu nisi dolor. Fusce non lobortis tortor. Donec ut rutrum sapien. Aliquam eget nisi et sem ultricies pharetra sit amet id purus. Nam varius dapibus luctus. Praesent eget neque at ligula rutrum convallis. Praesent mollis, nulla sit amet feugiat finibus, erat purus sollicitudin nunc, nec scelerisque ante nisi vitae erat. Mauris dui ligula, aliquam eu est sit amet, viverra pulvinar enim.&lt;/p&gt;&lt;p&gt;Donec in ante est. Duis eget libero rhoncus, accumsan est a, luctus enim. Mauris eu volutpat turpis. Nullam mollis feugiat lorem, non laoreet arcu pulvinar nec. Phasellus nec egestas nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque mattis mauris diam, id aliquam quam ultrices quis. Aliquam erat volutpat. Curabitur mauris quam, consectetur a nulla id, vulputate ultricies lectus. Morbi gravida enim vel velit finibus, id venenatis erat malesuada. Morbi gravida est et tortor venenatis, ac iaculis erat feugiat. Maecenas suscipit purus velit, vitae sollicitudin massa consectetur non.&lt;/p&gt;', 259.00, 0, '', '', 0, '1', '1'),
(48, 166, 14, '2017-12-03 13:02:51', 'dimg/urunfoto/62f0e29945f58.jpg', 'Bootstrap V9 Template İlan Scripti', 'bootstrap-v9-template-ilan-scripti', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed neque at nisl varius porta a non lectus. Vestibulum sit amet nunc turpis. In arcu nibh, facilisis sed sagittis sit amet, pretium eget felis. Vestibulum ac odio rhoncus, pulvinar nulla at, sollicitudin ex. Nulla sodales dolor at feugiat vehicula. Vestibulum sit amet convallis ex, vel feugiat ligula. Nam dapibus sagittis neque. Cras suscipit ultrices nulla vel vehicula.&lt;/p&gt;&lt;p&gt;Vestibulum nisl metus, viverra sed ex quis, vulputate lobortis tortor. Maecenas at turpis non lorem vestibulum faucibus. Vivamus efficitur fermentum justo, quis convallis lorem iaculis in. Proin eleifend diam nec mauris suscipit vulputate. Sed dolor mauris, rutrum ac imperdiet eget, efficitur eget magna. Aenean tristique lobortis enim, in aliquet nisi scelerisque non. Nam sagittis, sapien vel sagittis sollicitudin, dui ante blandit leo, nec porta dolor ex et lectus. Vestibulum varius euismod dolor ut auctor. Quisque posuere magna vel mi egestas tempor. Vivamus mollis velit id auctor interdum. Nam pulvinar eget orci nec viverra. Nunc blandit nunc vitae nisl porta, in lacinia odio volutpat. Donec et odio lorem. Nam facilisis laoreet leo sed cursus. Praesent vel nibh a purus ornare suscipit.&lt;/p&gt;&lt;p&gt;Phasellus lobortis euismod nisi dignissim congue. Sed pretium sed dui sit amet molestie. Donec dictum massa a feugiat placerat. Morbi id gravida diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat sapien sapien, nec sodales ante viverra in. Morbi faucibus felis ac cursus consectetur. Mauris posuere pharetra erat eget aliquet.&lt;/p&gt;&lt;p&gt;Morbi at nibh quis leo vulputate sagittis non vel tellus. Fusce semper lectus tortor, nec fermentum orci mattis sit amet. Duis quis lectus ullamcorper, imperdiet ligula finibus, sollicitudin dui. Sed arcu tellus, consequat vitae leo ac, viverra molestie nibh. Nunc eu nisi dolor. Fusce non lobortis tortor. Donec ut rutrum sapien. Aliquam eget nisi et sem ultricies pharetra sit amet id purus. Nam varius dapibus luctus. Praesent eget neque at ligula rutrum convallis. Praesent mollis, nulla sit amet feugiat finibus, erat purus sollicitudin nunc, nec scelerisque ante nisi vitae erat. Mauris dui ligula, aliquam eu est sit amet, viverra pulvinar enim.&lt;/p&gt;&lt;p&gt;Donec in ante est. Duis eget libero rhoncus, accumsan est a, luctus enim. Mauris eu volutpat turpis. Nullam mollis feugiat lorem, non laoreet arcu pulvinar nec. Phasellus nec egestas nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque mattis mauris diam, id aliquam quam ultrices quis. Aliquam erat volutpat. Curabitur mauris quam, consectetur a nulla id, vulputate ultricies lectus. Morbi gravida enim vel velit finibus, id venenatis erat malesuada. Morbi gravida est et tortor venenatis, ac iaculis erat feugiat. Maecenas suscipit purus velit, vitae sollicitudin massa consectetur non.&lt;/p&gt;', 259.00, 0, '', '', 0, '1', '1'),
(49, 166, 14, '2017-12-04 17:42:16', 'dimg/urunfoto/62f0e2b1a10cb.jpg', ' Turizm Scripti 222', 'haber-scripti', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet, lorem non gravida viverra, metus elit laoreet augue, vel ornare felis risus in turpis. Aenean eget urna hendrerit, fringilla dui non, ultricies nisl. Vivamus ut eros id augue elementum tincidunt in et velit. Ut posuere lorem libero, non efficitur orci volutpat vitae. Vestibulum quam ex, interdum id velit eget, condimentum tempus purus. Duis vitae nisi vel eros efficitur commodo et at nulla. Donec hendrerit tortor non mi malesuada pulvinar. Pellentesque id gravida sapien. Nulla vel ex consequat, mattis diam imperdiet, interdum leo. Aliquam rhoncus lorem ipsum, nec viverra libero malesuada sed. Donec suscipit ultrices tellus vel accumsan. Praesent in auctor risus.</p><p>Mauris sodales, erat at porta commodo, velit sem lacinia sem, eget pharetra sapien risus quis velit. Maecenas sit amet venenatis mauris, nec aliquet ante. Suspendisse id leo ac ex venenatis molestie. Suspendisse fringilla nisi in enim auctor, a euismod dolor bibendum. Suspendisse eget arcu non risus ultricies sagittis id efficitur erat. Donec rutrum erat fringilla lorem consequat consectetur. Proin id lorem lorem. Duis quis tellus vitae leo porttitor fermentum. Sed vel tincidunt eros. Fusce varius, felis quis porta maximus, sem mauris pretium neque, eu lobortis nisi metus non dui.</p><p>Sed molestie dolor in diam vehicula, et egestas ligula blandit. Vivamus ultrices volutpat posuere. Proin vulputate diam et sapien ornare cursus. Ut odio nisi, lacinia non dignissim non, posuere et justo. Nulla ac pretium turpis. Ut scelerisque vitae massa a sagittis. Suspendisse potenti. Proin finibus quam odio. Phasellus aliquet, augue vel consequat efficitur, eros magna euismod risus, at porttitor enim justo a est. Praesent ante nulla, sodales nec erat bibendum, egestas sodales libero. Phasellus convallis felis ac lorem ornare, in congue leo dapibus. Nam quis turpis et tellus posuere accumsan. Aliquam volutpat sem et lorem dignissim tristique. Aenean tincidunt tortor eget placerat dapibus. Maecenas quis libero a enim sodales rhoncus.</p><p>Donec ornare magna sit amet iaculis venenatis. Duis dictum erat eu tellus congue pharetra. Etiam interdum dui ligula, id eleifend libero pellentesque a. Nunc suscipit quam et magna malesuada faucibus. Sed malesuada, mi ac aliquet lobortis, ex dolor aliquet nulla, a varius elit neque quis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis luctus ante.</p><p>Nunc fringilla, eros eget finibus fringilla, sapien sapien imperdiet orci, ut volutpat eros tortor sed ex. Phasellus dignissim elementum sem eget imperdiet. Fusce non fermentum mauris. Maecenas turpis elit, faucibus at finibus non, ultrices ac nulla. Maecenas in orci enim. Nullam vitae neque vel turpis sagittis porta eu ac tellus. Mauris venenatis, velit vel fringilla suscipit, metus massa venenatis neque, vitae dictum eros neque id lectus. Duis mi justo, aliquet in dictum in, bibendum et lorem.</p>', 59.00, 0, '', '', 0, '1', '1'),
(51, 166, 14, '2017-12-04 17:42:16', 'dimg/urunfoto/62ed3969f1df6.jpg', ' Firma Scripti 222', 'haber-scripti', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet, lorem non gravida viverra, metus elit laoreet augue, vel ornare felis risus in turpis. Aenean eget urna hendrerit, fringilla dui non, ultricies nisl. Vivamus ut eros id augue elementum tincidunt in et velit. Ut posuere lorem libero, non efficitur orci volutpat vitae. Vestibulum quam ex, interdum id velit eget, condimentum tempus purus. Duis vitae nisi vel eros efficitur commodo et at nulla. Donec hendrerit tortor non mi malesuada pulvinar. Pellentesque id gravida sapien. Nulla vel ex consequat, mattis diam imperdiet, interdum leo. Aliquam rhoncus lorem ipsum, nec viverra libero malesuada sed. Donec suscipit ultrices tellus vel accumsan. Praesent in auctor risus.</p><p>Mauris sodales, erat at porta commodo, velit sem lacinia sem, eget pharetra sapien risus quis velit. Maecenas sit amet venenatis mauris, nec aliquet ante. Suspendisse id leo ac ex venenatis molestie. Suspendisse fringilla nisi in enim auctor, a euismod dolor bibendum. Suspendisse eget arcu non risus ultricies sagittis id efficitur erat. Donec rutrum erat fringilla lorem consequat consectetur. Proin id lorem lorem. Duis quis tellus vitae leo porttitor fermentum. Sed vel tincidunt eros. Fusce varius, felis quis porta maximus, sem mauris pretium neque, eu lobortis nisi metus non dui.</p><p>Sed molestie dolor in diam vehicula, et egestas ligula blandit. Vivamus ultrices volutpat posuere. Proin vulputate diam et sapien ornare cursus. Ut odio nisi, lacinia non dignissim non, posuere et justo. Nulla ac pretium turpis. Ut scelerisque vitae massa a sagittis. Suspendisse potenti. Proin finibus quam odio. Phasellus aliquet, augue vel consequat efficitur, eros magna euismod risus, at porttitor enim justo a est. Praesent ante nulla, sodales nec erat bibendum, egestas sodales libero. Phasellus convallis felis ac lorem ornare, in congue leo dapibus. Nam quis turpis et tellus posuere accumsan. Aliquam volutpat sem et lorem dignissim tristique. Aenean tincidunt tortor eget placerat dapibus. Maecenas quis libero a enim sodales rhoncus.</p><p>Donec ornare magna sit amet iaculis venenatis. Duis dictum erat eu tellus congue pharetra. Etiam interdum dui ligula, id eleifend libero pellentesque a. Nunc suscipit quam et magna malesuada faucibus. Sed malesuada, mi ac aliquet lobortis, ex dolor aliquet nulla, a varius elit neque quis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis luctus ante.</p><p>Nunc fringilla, eros eget finibus fringilla, sapien sapien imperdiet orci, ut volutpat eros tortor sed ex. Phasellus dignissim elementum sem eget imperdiet. Fusce non fermentum mauris. Maecenas turpis elit, faucibus at finibus non, ultrices ac nulla. Maecenas in orci enim. Nullam vitae neque vel turpis sagittis porta eu ac tellus. Mauris venenatis, velit vel fringilla suscipit, metus massa venenatis neque, vitae dictum eros neque id lectus. Duis mi justo, aliquet in dictum in, bibendum et lorem.</p>', 59.00, 0, '', '', 0, '1', '1'),
(52, 166, 14, '2017-12-03 13:02:51', 'dimg/urunfoto/62ed399c53dc4.jpg', 'Havayolu Acentesi Scripti', 'bootstrap-v9-template-ilan-scripti', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed neque at nisl varius porta a non lectus. Vestibulum sit amet nunc turpis. In arcu nibh, facilisis sed sagittis sit amet, pretium eget felis. Vestibulum ac odio rhoncus, pulvinar nulla at, sollicitudin ex. Nulla sodales dolor at feugiat vehicula. Vestibulum sit amet convallis ex, vel feugiat ligula. Nam dapibus sagittis neque. Cras suscipit ultrices nulla vel vehicula.&lt;/p&gt;&lt;p&gt;Vestibulum nisl metus, viverra sed ex quis, vulputate lobortis tortor. Maecenas at turpis non lorem vestibulum faucibus. Vivamus efficitur fermentum justo, quis convallis lorem iaculis in. Proin eleifend diam nec mauris suscipit vulputate. Sed dolor mauris, rutrum ac imperdiet eget, efficitur eget magna. Aenean tristique lobortis enim, in aliquet nisi scelerisque non. Nam sagittis, sapien vel sagittis sollicitudin, dui ante blandit leo, nec porta dolor ex et lectus. Vestibulum varius euismod dolor ut auctor. Quisque posuere magna vel mi egestas tempor. Vivamus mollis velit id auctor interdum. Nam pulvinar eget orci nec viverra. Nunc blandit nunc vitae nisl porta, in lacinia odio volutpat. Donec et odio lorem. Nam facilisis laoreet leo sed cursus. Praesent vel nibh a purus ornare suscipit.&lt;/p&gt;&lt;p&gt;Phasellus lobortis euismod nisi dignissim congue. Sed pretium sed dui sit amet molestie. Donec dictum massa a feugiat placerat. Morbi id gravida diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat sapien sapien, nec sodales ante viverra in. Morbi faucibus felis ac cursus consectetur. Mauris posuere pharetra erat eget aliquet.&lt;/p&gt;&lt;p&gt;Morbi at nibh quis leo vulputate sagittis non vel tellus. Fusce semper lectus tortor, nec fermentum orci mattis sit amet. Duis quis lectus ullamcorper, imperdiet ligula finibus, sollicitudin dui. Sed arcu tellus, consequat vitae leo ac, viverra molestie nibh. Nunc eu nisi dolor. Fusce non lobortis tortor. Donec ut rutrum sapien. Aliquam eget nisi et sem ultricies pharetra sit amet id purus. Nam varius dapibus luctus. Praesent eget neque at ligula rutrum convallis. Praesent mollis, nulla sit amet feugiat finibus, erat purus sollicitudin nunc, nec scelerisque ante nisi vitae erat. Mauris dui ligula, aliquam eu est sit amet, viverra pulvinar enim.&lt;/p&gt;&lt;p&gt;Donec in ante est. Duis eget libero rhoncus, accumsan est a, luctus enim. Mauris eu volutpat turpis. Nullam mollis feugiat lorem, non laoreet arcu pulvinar nec. Phasellus nec egestas nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque mattis mauris diam, id aliquam quam ultrices quis. Aliquam erat volutpat. Curabitur mauris quam, consectetur a nulla id, vulputate ultricies lectus. Morbi gravida enim vel velit finibus, id venenatis erat malesuada. Morbi gravida est et tortor venenatis, ac iaculis erat feugiat. Maecenas suscipit purus velit, vitae sollicitudin massa consectetur non.&lt;/p&gt;', 259.00, 0, '', '', 0, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `yorum_id` int(11) NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_puan` int(11) NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci DEFAULT '0',
  PRIMARY KEY (`yorum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_puan`, `yorum_zaman`, `yorum_onay`) VALUES
(29, 180, 42, 'Emre Yaman 2 ay içinde html ve php öğrenip projesini bitirdi... Birinci sınıf yazılımcılar kalitesinde projesini sonlandırdı ', 5, '2022-08-14 13:32:33', '0'),
(30, 180, 42, 'Emre Yaman 2 ay içinde html ve php öğrenip projesini bitirdi... Birinci sınıf yazılımcılar kalitesinde projesini sonlandırdı ', 3, '2022-08-14 13:32:33', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
