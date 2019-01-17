<?php
	session_start();
	require_once "./connect.php";

	$username = $_POST['username'];
	$password = $_POST['password'];
	// $password = sha1($_POST['password']);

	$sql = "SELECT * FROM users WHERE username = '$username' ";
	$result = mysqli_query($conn,$sql);
	$user_info = mysqli_fetch_assoc($result);

	// this compare non hashed password to the hashed value stored in the database.
	if(!password_verify($password, $user_info['password'])){
		die("login_failed");
	} else{
		$_SESSION['user'] = $user_info;
	}
	// var_dump($_SESSION['user'] = $user_info);
	
	echo "login_sucess";
	mysqli_close($conn);

	// header('location: ../views/login.php');


?>