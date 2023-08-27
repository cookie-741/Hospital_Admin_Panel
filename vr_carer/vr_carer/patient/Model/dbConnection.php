<?php
$hostname = "vr-carer-ysyw-do-user-14558665-0.b.db.ondigitalocean.com";
$port = "25060";
$dbname = "defaultdb";
$username = "doadmin";
$password = "AVNS_QXXt9axNKwe59BRIb-2";
$pdo = new PDO(
    "mysql:host=$hostname;port=$port;dbname=$dbname", 
$username, $password);
