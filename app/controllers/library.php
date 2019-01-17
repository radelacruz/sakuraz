<?php
// A function to sanitize the input
function sanitize_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

// create a file called library.php inside controllers folder
