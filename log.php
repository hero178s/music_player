<?php 
session_start(); 
include "db_connect.php";

if (isset($_POST['username']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$user = validate($_POST['username']);
	$pass = validate($_POST['password']);
/*
	if (empty($user)) {
		header("Location: index.php?error=User Name is required");
	    exit();
	}else if(empty($pass)){
        header("Location: index.php?error=Password is required");
	    exit();
*/
	{
		$sql = "SELECT * FROM users WHERE username='$user' AND password='$pass'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $user && $row['password'] === $pass) {
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['id'] = $row['id'];			
            	header("Location: main.php");
		        exit();
            }else{
				header("Location: index.php?error=Sai tài khoản hoặc mật khẩu. Kiểm tra lại!");
		        exit();
			}
		}else{
			header("Location: index.php?error=Sai tài khoản hoặc mật khẩu. Kiểm tra lại!");
	        exit();
		}
	}
	
}else{
	header("Location: index.php");
	exit();
}