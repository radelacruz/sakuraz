<?php
require_once "./connect.php";
$id = $_GET['id'];

// var_export($user);
$complete_order_query = "UPDATE orders SET status_id = 2 WHERE id=$id;";
$result = mysqli_query($conn, $complete_order_query);

if(!$result){
	echo mysqli_error($conn);
}

header("Location: ../views/orders.php");
?>