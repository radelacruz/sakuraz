$(document).ready( () => {
	function validate_registration_form(){
		let errors = 0;
		let username = $("#username").val();
		let password = $("#password").val();
		let firstname = $("#firstname").val();
		let lastname = $("#lastname").val();
		let email = $("#email").val();
		let address = $("#address").val();

		//username should be greater than or equal to 6 chars
		if(username.length < 6){
			$("#username").next().css("color", "red");
			$("#username").next().html("Username should be atleast 6 characters");
			errors++;
		} else{
			$("#username").next().html(" ");
		}

		//password should be atleast 8
		if(password.length < 6){
			$("#password").next().css("color", "red");
			$("#password").next().html("Please provide a stronger password");
			errors++;
		} else {
			$("#password").next().html(" ");
		}

		//email
		if(!email.includes("@")){
			$("#email").next().css("color", "red");
			$("#email").next().html("Please provide a valid email");
			errors++;
		} else{
			$("#email").next().html(" ");
		}

		//address
		if(!address != ""){
			$("#address").next().css("color", "red");
			$("#address").next().html("Please provide a valid address");
			errors++;
		} else{
			$("#address").next().html(" ");
		}

		//firstname
		if(!firstname != ""){
			$("#firstname").next().css("color", "red");
			$("#firstname").next().html("Please provide a valid name");
			errors++;
		} else{
			$("#firstname").next().html(" ");
		}	

		//lastname
		if(!lastname != ""){
			$("#lastname").next().css("color", "red");
			$("#lastname").next().html("Please provide a valid name");
			errors++;
		} else{
			$("#lastname").next().html(" ");
		}	

		//confirm password
		if(password !== $("#confirm_password").val()){
			$("#confirm_password").next().css("color", "red");
			$("#confirm_password").next().html("Passwords should match");
			errors++;
		} else{
			$("#confirm_password").next().html(" ");
		}	

		if(errors > 0){
			return false; //this means thre are erros
		} else {
			return true;
		}
	}

	$("#add_user").click( (e) => {
		if(validate_registration_form()){
			let username = $("#username").val();
			let password = $("#password").val();
			let firstname = $("#firstname").val();
			let lastname = $("#lastname").val();
			let email = $("#email").val();
			let address = $("#address").val();

			$.ajax({
				"url" : '../controllers/create_user.php',
				"method" : "POST",
				"data" : {
					'username' :username,
					'password' :password,
					'firstname' :firstname,
					'lastname' :lastname,
					'email' :email,
					'address' :address
				},
				"success":(data) => {
					if(data == "user_exists"){
						$("#username").next().css("color", "red");
						$("#username").next().html("Username already exists");
					}else{
						alert("user created successfully");
						//redirect broswer
						window.location.replace("../../index.php")
					}
				}
			});
		}
	});

	//login and session
	$("#login").click( (e) => {
		let username = $("#username").val();
		let password = $("#password").val();

		$.ajax({
			"url": "../controllers/authenticate.php",
			"method": "POST",
			"data": {
				'username': username,
				'password': password
			},
			"success": (data) => {
				if(data == "login_failed"){
					$("#username").next().css("color", "red");
					$("#username").next().html("Please provide correct credentials");
				} else{
					window.location.replace("../views/home.php");
				}
			}
		});
	});

	//prep for the add to cart
	$(document).on('click', '.add-to-cart', (e) => {
		//to prevent the default behavior and to override it with our own
		e.preventDefault();
		//prevent parant elements to be triggered
		e.stopPropagation();

		//target is the one who trigerred event
		let item_id = $(e.target).attr("data-id");
		let item_quantity = parseInt($(e.target).prev().val());

		$.ajax({
			"url": "../controllers/update_cart.php",
			"method": "POST",
			"data": {
				'item_id': item_id,
				'item_quantity': item_quantity,
				'update_from_cart_page': 0
			},
			"success": (data) => {
				$("#cart-count").html(data);
				// $("#cart-count").css("color","red");
			}
		});
	});

	function getTotal(){
		let total = 0;
		$(".item_subtotal").each(function(e){
			// total = total + parseFloat($(this).html());
			total += parseFloat($(this).html());
		});
		$("#total_price").html(total.toFixed(2));
	}

	//edit cart
	$(".item_quantity>input").on("input", (e) =>{
		// alert('hello');
		let item_id = $(e.target).attr('data-id');
		let quantity = parseInt($(e.target).val());
		let price = parseFloat($(e.target).parents('tr').find(".item_price").html());

		subTotal = quantity * price;
		$(e.target).parents('tr').find('.item_subtotal').html(subTotal.toFixed(2));
		
		getTotal();
		$.ajax({
			"url": "../controllers/update_cart.php",
			"method": "POST",
			"data": {
				'item_id': item_id,
				'item_quantity':quantity,
				'update_from_cart_page':1
			},
			"success": (data) => {
				// alert(data);
				$("#cart-count").html(data);
			}
		});
	});

	//delete button
	$(document).on('click', '.item-remove', (e) =>{
		e.preventDefault();
		e.stopPropagation();

		let item_id = $(e.target).attr('data-id');
		$.ajax({
			"url": "../controllers/update_cart.php",
			"method": "POST",
			"data": {
				'item_id': item_id,
				'item_quantity': 0
			},
			"beforeSend": () => {
				return confirm("Are you sure you want to delete?");
			},
			"success": (data) => {
				$(e.target).parents('tr').remove();
				$("#cart-count").html(data);
				getTotal();
				window.location.replace("../views/cart.php");
			}
		})
	});


	// submit profile from updates

	$("#update_info").click(() =>{
		$('#update_user_details').submit();
	});



});
