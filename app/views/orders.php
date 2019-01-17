<?php require_once "../partials/template.php"; ?>
<?php
function get_page_content() {
	if(isset($_SESSION['user']) && $_SESSION['user']['roles_id'] ==1){
		global $conn;
?>
		<div class="container">
			<h4 class="text-center">Orders</h4>
			<div class="row">
				<div class="col-sm-8 offset-sm-2">
					<table class="table table-responsive table-striped">
						<thead>
							<tr class="text-center">
								<th>Orders</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody class="text-center">
							<?php
							foreach ($_SESSION['user'] as $id => $qty) {
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
				</div> <!-- end cols -->
			</div> <!-- end rows -->
		</div> <!-- end container -->
	<?php }else{
		header("Location: ./error.php");
	} ?>
	
<?php } ?>