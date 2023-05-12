<?php
$host = "localhost";
$username = "root";
$pw = "";
$db = "mp_db";

$conn = @new mysqli($host, $username, $pw, $db);
if(!$conn){
    die("Kết nối database thất bại. Lý do: ".$conn->error);
}
