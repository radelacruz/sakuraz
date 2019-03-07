<?php
	$host = 'sql12.freemysqlhosting.net';
	$username = 'sql12282203';
	$password = 'wD8veeMY1F';
	$dbname = 'sql12282203';

	// Server: sql12.freemysqlhosting.net
	// Name: sql12278905
	// Username: sql12278905
	// Password: Q6WiPaQnCT
	// Port number: 3306

	// $host = 'db4free.net';
	// $username = 'annadriano';
	// $password = '#Inc0rrect';
	// $dbname = 'sakuraz_db';

	// $host = 'localhost';
	// $username = 'root';
	// $password = '';
	// $dbname = 'sakuraz_db';
	
	$conn = mysqli_connect($host, $username, $password, $dbname);

	if (!$conn) {
		die('connection failed: ' . mysqli_error($conn));
	}
	// echo 'connected succesfully';
 ?>