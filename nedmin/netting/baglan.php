<?php




try {


    $db = new PDO("mysql:host=localhost;dbname=c2c;charset=utf8", 'root', '');


} catch (PDOExpception $e) {


    echo $e->getMessage();

}


?>