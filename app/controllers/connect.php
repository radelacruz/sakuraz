<?php
	$host = 'db4free.net';
	$username = 'sakuraz';
	$password = 'Inc0rrect';
	$dbname = 'sakuraz';

	// $host = 'localhost';
	// $username = 'root';
	// $password = '';
	// $dbname = 'sakuraz';
	
	$conn = mysqli_connect($host, $username, $password, $dbname);

	if (!$conn) {
		die('connection failed: ' . mysqli_error($conn));
	}
	// echo 'connected succesfully';
 ?>
