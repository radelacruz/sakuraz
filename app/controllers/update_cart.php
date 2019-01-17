<?php
	// require_once "./connect.php";
	session_start();
	// require_once "./connect.php";

	function getCartCount(){
		return array_sum($_SESSION['cart']);
	}

	$item_id = $_POST['item_id'];
	$item_quantity = $_POST['item_quantity'];

	if($item_quantity == "0"){
		unset($_SESSION['cart'][$item_id]);
	} else{
		if(isset($_SESSION['cart'][$item_id])){
			$update_flag = $_POST['update_from_cart_page'];

			if($update_flag == 0){
				// in catalog page, add as there is an existing value
				$_SESSION['cart'][$item_id] += $item_quantity;			
			} else{
				$_SESSION['cart'][$item_id] = $item_quantity;
			}
			//add the item_quantity as the new value
			// x += y;
			// x = x+y;
			// $_SESSION['cart'][$item_id] = item_quantity
			// current quantity += new quantity
			// cq =cq + new quantity

		} else{
			$_SESSION['cart'][$item_id] = $item_quantity;
		} 
	}
	// $_SESSION['cart'][$item_id] = $item_quantity;
	// var_dump($_SESSION['cart'][$item_id]);
	echo getCartCount();
	// mysqli_close($conn);
?>
