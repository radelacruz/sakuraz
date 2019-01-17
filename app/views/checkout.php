<?php require_once "../partials/template.php"; ?>
<?php
function get_page_content() {
	if(isset($_SESSION['user']) && $_SESSION['user']['roles_id'] ==2){
		global $conn;
?>
		<?php
		if(!isset($_SESSION['user'])){
			header("Location: ./login.php");
		} 
		?>

		<h1>Hello, welcome to your checkout page</h1>
		<form action="../controllers/placeorder.php" method="POST">
			<div class="container">
				<div class="row">
					<div class="col-8">
						<h4>Shipping Address</h4>
						<div class="form-group">
							<input type="text" class="form-control" name="addressLine1" value="<?php echo $_SESSION['user']['address']; ?>">
						</div>
					</div> <!-- end col -->
				</div> <!-- end row -->

				<h4>Order Summary</h4>
				<div class="row">
					<div class="col-sm-6">
						<p>Total</p>
					</div>
					<div class="col-sm-6" id="total_price">
						<?php 
						$cart_total = 0;
						// var_dump($_SESSION['cart']);
						foreach($_SESSION['cart'] as $id => $qty){
							$sql = "SELECT * FROM items WHERE id=$id";
							$result = mysqli_query($conn, $sql);
							$item = mysqli_fetch_assoc($result);
							// var_dump($_SESSION['cart']['$id']);
							$subTotal = $_SESSION['cart'][$id] * $item['price'];
							// $cart_total = $cart_total + $subTotal;
							$cart_total += $subTotal;
						}
						echo $cart_total;
						?>
					</div>
				</div> <!-- end row -->
				<hr>
				<button type="submit" class="btn btn-primary btn-block">Place Order Now</button>
				<div class="row cart-items mt-4">
					<dib class="table-responsive">
						<table class="table table-striped table-bordered" id="cart-items">
							<thead>
								<tr class="text-center">
									<th colspan="2">Item Name</th>
									<th>Item Price</th>
									<th>Item Quantity</th>
									<th>Item Subtotal</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<?php
								foreach ($_SESSION['cart'] as $id => $qty) {
									$sql2 = "SELECT * FROM items WHERE id=$id;";
									$result = mysqli_query($conn,$sql2);
									// var_dump($result);
									$item = mysqli_fetch_assoc($result);
									// var_dump($item);
								?>
									<tr class="text-center">
										<td colspan="2"><?php echo $item['name']; ?></td>
										<td><?php echo $item['price']; ?></td>
										<td><?php echo $qty; ?></td>
										<td><?php echo $qty * $item['price']; ?></td>
									</tr>

								<?php } ?>
							</tbody>
						</table>
					</dib>
				</div>
			</div> <!-- end container -->
		</form> <!-- end form -->
	<?php }else{
		header("Location: ./login.php");
	} ?>
<?php } ?>