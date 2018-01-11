<?php
if($_SERVER["SERVER_NAME"] == "localhost" or $_SERVER["SERVER_NAME"] == "127.0.0.1"){
  #判斷主機為UniServerZ
  #MYSQL
  #資料庫伺服器
  $db_host = "localhost";
 
  #資料庫使用者帳號
  $db_user = "root";
 
  #資料庫使用者密碼
  $db_password = "111111";
 
  #資料庫名稱
  $db_name = "ugm_show";
 
}else{
  #MYSQL
  #資料庫伺服器
  $db_host = "localhost";
 
  #資料庫使用者帳號
  $db_user = "使用者帳號";
 
  #資料庫使用者密碼
  $db_password = "使用者密碼";
 
  #資料庫名稱
  $db_name = "ugm_show";
 
}
 
#PHP 5.2.9以後
$db = new mysqli($db_host, $db_user, $db_password, $db_name);
if ($db->connect_error) {  
  $fp = file_get_contents("mysql.sql");  
  $fp = str_replace('{moduleName}', $WEB['moduleName'], $fp);

  echo "<meta charset='UTF-8'>";
  echo "<br>=========================================================<br>";
  echo "請建資料庫「{$db_name}」<br>";
  echo "並複製底下資料表結構，建立資料表";
  echo "<hr>";
  echo '<link href="http://cdn.bootcss.com/prettify/r298/prettify.css" rel="stylesheet">';
  echo '<script src="http://cdn.bootcss.com/prettify/r298/prettify.js"></script>';
  echo "<pre class='prettyprint'>";
  echo htmlspecialchars($fp, ENT_QUOTES);
  echo "</pre>";
  echo "<br>=========================================================<br>";

  die('無法連上資料庫 (' . $db->connect_errno . ') '
        . $db->connect_error);
  exit;
}
 
#設定資料庫語系
$db->set_charset("utf8");