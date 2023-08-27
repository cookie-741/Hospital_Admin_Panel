<?php


try {
    $hostname = "vr-carer-ysyw-do-user-14558665-0.b.db.ondigitalocean.com";
    $port = "25060";
    $dbname = "vr_carer";
    $username = "doadmin";
    $password = "AVNS_QXXt9axNKwe59BRIb-2";
    $pdo = new PDO(
        "mysql:host=$hostname;port=$port;dbname=$dbname",
        $username,
        $password
    );
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "PDO Exception: " . $e->getMessage() . " (SQLSTATE " . $e->getCode() . ")";
}
