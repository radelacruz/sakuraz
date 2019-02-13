	<nav id="navbar" class="navbar navbar-expand-lg navbar-dark mb-3">  <!-- bg-dark  navbar-dark-->
		<!-- <a class="navbar-brand" href="./home.php">
			<i class="far fa-hand-peace"></i> SakuraZ
		</a> -->
		<img class="img-fluid logo" src="../assets/images/sakuraz.png">
		<a class="navbar-brand mr-auto" href="./home.php">SakuRaz</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div id="navbar-nav" class="collapse navbar-collapse">
			<ul class="navbar-nav ml-auto">
				
				<?php
				if(!isset($_SESSION['user']) || (isset($_SESSION['user']) && ($_SESSION['user']['roles_id'] == 2))){

				?>

				<li class="nav-item">
					<a class="nav-link" href="./home.php"> <!-- <i class="fas fa-home"></i> -->Home </a>
				</li>

				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<!-- <i class="fas fa-bars"></i> -->Catalog
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="./catalog.php">Flowers</a>
					<a class="dropdown-item" href="./sympathy.php">Sympathy and Funeral</a>
					<a class="dropdown-item" href="./occasion.php">Occasions</a>
					<a class="dropdown-item" href="./event.php">Wedding and Events</a>
				</div>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="./cart.php"><i class="fas fa-shopping-cart"></i>Cart <span class="badge bg-danger text-light" id="cart-count">
						<?php
							if (isset($_SESSION['cart'])){
								echo array_sum($_SESSION['cart']);
							} else {
								echo "0";
							}
						?>
					</span></a>
				</li>
			<?php } elseif(isset($_SESSION['user']) && ($_SESSION['user']['roles_id'] == 1)){ ?>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-bars"></i>Items
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="./items.php">Flowers</a>
						<a class="dropdown-item" href="./sym_items.php">Sympathy and Funeral</a>
						<a class="dropdown-item" href="./occ_items.php">Occasions</a>
						<a class="dropdown-item" href="./event_items.php">Wedding and Events</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./orders.php"> Orders </a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="./users.php">Users </a>
				</li>
			<?php }; ?>


				<!-- if may session logged_in_user -->
				<?php if(isset($_SESSION["user"])): ?>
					<!-- -logout link -->
					<li class="nav-item">
						<a class="nav-link" href="../views/profile.php">Welcome, <?php echo $_SESSION['user']['firstname']; ?></a>
					</li>

					<li class="nav-item">
						<a class="nav-link" href="../controllers/logout.php"> Logout </a>
					</li>

				<!-- else -->
				<?php else: ?>

					<!-- -login link -->
					<li class="nav-item">
						<a class="nav-link" href="./login.php"> Login </a>
					</li>

					<!-- register link -->
					<li class="nav-item">
						<a class="nav-link" href="./register.php"> Register </a>
					</li>
				<?php endif; ?>


			</ul>
		</div> <!-- end navbar nav -->
	</nav> <!-- end nav -->