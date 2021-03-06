<?php require_once "../partials/template.php"; ?>
<?php
function get_page_content() {
	require_once "../controllers/connect.php";
	if(!isset($_SESSION['user']) || (isset($_SESSION['user']) && ($_SESSION['user']['roles_id'] == 2))){
		global $conn;
?>
		<div class="container">
			<div class="row">
				<!-- categories -->
				<div class="col-sm-2">
					<!-- display categories -->
					<h2 class=" py-3">Categories</h2>
					<ul class="list-group">
						<a href="sympathy.php">
							<li class="list-group-item">All</li>
						</a>
						<?php
						$sql = "SELECT * FROM sympathy";
						$categories = mysqli_query($conn, $sql);
						foreach ($categories as $category) { ?>
							<a href="sympathy.php?category_id=<?php echo $category['id']; ?>">
								<li class="list-group-item">
									<?php echo $category['name']; ?>
								</li>
							</a>
						<?php } ?>
					</ul>
					<h2>Sort</h2>
					<ul class="list-group border">
						<a href="../controllers/sort.php?sort=asc">
							<li class="list-group-item">
								Price(Lowest to Highest)
							</li>
						</a>
						<a href="../controllers/sort.php?sort=dsc">
							<li class="list-group-item">
								Price(Highest to Lowest)
							</li>
						</a>					
					</ul>				
				</div> <!-- end categories -->

				<!-- items -->
				<div class="col-sm-10">
					<div class="container">
						<?php
						$sql2 = "SELECT * FROM sym_items";
						//filter via category
						if(isset($_GET['category_id'])){
							$sql2 .= " WHERE category_id =".$_GET['category_id'];
						}

						if(isset($_SESSION['sort'])){
							$sql2 .= $_SESSION['sort'];
						}

						$items = mysqli_query($conn, $sql2);
						echo "<div class='row'>";
						foreach ($items as $item){ ?>
							<div class="col-sm-4 my-4">
								<div id="card" class="card h-100" data-toggle="modal" data-target="#modal-<?php echo $item['id']; ?>">
									<img class="card-img-top img-fluid5" height="200" src="<?php echo $item['image_path']; ?>">
									<div class="card-body">
										<h4 class="card-title">
											<?php echo $item['name']; ?>
										</h4>
										<p class="card-text">
											<?php echo $item['description']; ?>
											<br>
											<?php echo "Price: ".$item['price']; ?>
										</p>
									</div> <!-- end card body -->
									<!-- add to cart -->
									<div class="card-footer text-center">
										<input type="number" value="1" min="0" max="100" width="10">
										<button type="submit" class="btn add-to-cart" data-id="<?php echo $item['id']; ?>" title="Add to Cart">🛒</button>
									</div>
								</div> <!-- end card -->
								<!-- modal itself -->
								<div id="modal-<?php echo $item['id']; ?>" class="modal fade mx-0">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<header class="modal-header m-0">
												<h5 class="modal-title"><?php echo $item['name']; ?></h5>
												<button class="close" data-dismiss="modal">
													<span> &times; </span>
												</button>
											</header> <!-- end modal header -->

											<div class="modal-body">
												<img class="card-img-top img-fluid5" height="200" src="<?php echo $item['image_path']; ?>">
												<p class="py-2"><?php echo $item['description']; ?></p>
												<p class="card-text">Price: <?php echo $item['price']; ?></p>
											</div> <!-- end modal-body -->
										</div> <!-- end modal-content -->
									</div>
								</div> <!-- end modal-1 -->

							</div> <!-- end item col -->
						<?php } echo "</div>" ?> <!-- end of items row -->		
					</div> <!-- end items container -->
				</div> <!-- end items -->
			</div> <!-- end row -->
		</div> <!-- end container -->
	<?php }else{
		header("Location: ./error.php");
	} ?>
<?php } ?>