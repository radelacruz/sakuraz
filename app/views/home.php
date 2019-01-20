<?php require_once "../partials/template.php"; ?>
<?php
function get_page_content() {
?>
	<div id="home" class="jumbotron my-5 text-center">
		<div class="container mt-3 mx-3">
			<p class="text-center lead">Welcome to</p>
			<h1><strong>SakuRaz</strong></h1>
			<hr>
			<p class="text-center lead px-3">SakuRaz is one of the best flower shop in the Philippines.</p>
		</div>
	</div>

	<div id="product" class="my-5 text-center">
		<div class="container">
			<h2 class="my-3">Our Products</h2>
			<p class="card-text">SakuRaz provides a selection of flower arrangements and bouquets that suit any occasion</p>
			<div class="row">
				<div class="col-12 col-md-4 col-lg-4">
					<div id="card" class="card h-100" >
						<img id="home-img" class="card-img-top img-fluid" src="../assets/images/R004.jpg">

						<div class="card-body">
							<h3 class="card-title">Cream Color Roses Bouquet</h3>	
						</div>
					</div> <!-- end card -->
				</div> <!-- end 4 cols -->
				<div class="col-12 col-md-4 col-lg-4">
					<div id="card" class="card h-100" >
						<img id="home-img" class="card-img-top img-fluid" src="../assets/images/PR003.jpg">

						<div class="card-body">
							<h3 class="card-title">Preserved Pink Rose Cube</h3>	
						</div>
					</div> <!-- end card -->
				</div> <!-- end 4 cols -->
				<div class="col-12 col-md-4 col-lg-4">
					<div id="card" class="card h-100" >
						<img id="home-img" class="card-img-top img-fluid" src="../assets/images/C003.jpg">

						<div class="card-body">
							<h3 class="card-title">Pink Carnation Bouquet</h3>	
						</div>
					</div> <!-- end card -->
				</div> <!-- end 4 cols -->
			</div> <!-- end row -->
		</div> <!-- ends container -->
	</div>

	<div id="about" class="my-5 px-5">
		<div class="container">
			<div class="text-center">
				<h2 class="my-3">About Us</h2>
				<p class="text-center px-5 mx-3">We are always grateful to know that our creations have continued to happily reach homes of many customers across the country. SakuraZ flower shop was founded by Ms. Razelle Ann Dela Cruz, Ms. Rochelle Tamayo and Ms. Micca Barreda. They started their flower shop business in Enzo Building Philippines on 2018. </p>
			</div>
			<div>
				<h2 class="text-center my-3">Our Mission</h2>
				<p class="text-center px-5 mx-3">SakuRaz want to provide a high quality products and services that consistently exceed customers’ expectations.</p>
			</div>
			<div>
				<h2 class="text-center my-3">Our Vision</h2>
				<p class="text-center px-5 mx-3">Sakuraz vision is to be a great place to work and influence people to be the best they can be. We want to build partnerships with our suppliers and customers to create mutual value. And maintain profitability by maximizing markets, having new products, efficient workforce and processes.</p>
			</div>
		</div>
	</div>

	<div class="contact">
		<div class="container">
			<div id="contact">
				<h2 class="text-center">Contact Us</h2>
				<p class="text-center my-2"><i class="fas fa-phone"></i>(02) 1234567</p>
				<p class="text-center my-2"><i class="fas fa-mobile"></i> 09171234567</p>
				<p class="text-center my-2"><i class="fas fa-envelope"></i>sakurazflowershop@mail.com</p>
			</div>
			<div id="map">
				<h3 class= "text-center my-4 ">Where to find Us?</h3>
				<p class="text-center my-2"><i class="fas fa-map-marker-alt"></i>399 Sen. Gil J. Puyat Ave, Makati, 1200 Metro Manila</p>
				<div class="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.7323725326755!2d121.03122371420885!3d14.557291089830123!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c901e242f095%3A0xcbab77db1aac9063!2sENZO+BUILDING!5e0!3m2!1sen!2sph!4v1547912661205" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
			</div> <!-- end of right side -->
		</div>
	</div>

<?php } ?>