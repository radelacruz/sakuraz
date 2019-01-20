<?php
session_start();
require_once "./connect.php";
	$firstname = $_SESSION['user']['firstname'];
	$lastname = $_SESSION['user']['lastname'];
$purchase_date = date("Y-m-d G:i:s");
$transaction_number = generate_new_transaction_number();
function generate_new_transaction_number(){
	$ref_number = "";

	$source = array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F");


	for($i=0; $i<16; $i++){

		$index = rand(0,15); //generates a random number from 0-15

		//append ramdom character

		$ref_number .= $source[$index];
	}

	$today = getdate();
	return $ref_number. "-".$today[0]; //seconds since Unix Epoch
}
$address = "hallooo";

'<div style="text-transform:capitalize;">
	<h3>Dear '.$firstname.' '.$lastname.',</h3>
</div>'.
// '<br>'.
'<div><p>Your order with the <strong style="color:red"> Reference No.:  '.$transaction_number.' </strong> has been placed on '. $purchase_date.' via <strong> Cash on Delivery (COD) </strong>. You will receive another email after your item(s) has been shipped.</p></div>'.
// '<br>'.
'<div><h3 style="color:red">Note:</h3></div>'.
'<div>
	<p>Make sure that the information you provided in your order follows the required format:</p>
		<ul>
			<li>Name – First and Last Name</li>
			<li>Shipping Address – House Number, Building and Street Name, Province, City/Municipality, and Barangay</li>
		</ul>
	<p>In the event that the information you provided is incomplete, you may place a new order with the correct and complete details and cancel the initial order, if still within the processing stage. Incorrect or incomplete details can result in the cancellation of order.</p>
	<p>If you did not place this order, please report it to us immediately.</p>
</div>'.
"Total Amount: $price".
"<div>Shipping Address: $address</div>";




?>
<!-- <div>
	<p>Make sure that the information you provided in your order follows the required format:</p>
	<ul>
		<li>Name – First and Last Name</li>
		<li>Shipping Address – House Number, Building and Street Name, Province, City/Municipality, and Barangay</li>
	</ul>
	<p>In the event that the information you provided is incomplete, you may place a new order with the correct and complete details and cancel the initial order, if still within the processing stage. Incorrect or incomplete details can result in the cancellation of order.</p>
	<p>If you did not place this order, please report it to us immediately.</p>
</div> -->