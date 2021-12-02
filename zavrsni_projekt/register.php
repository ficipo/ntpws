<?php
	
	if ($_POST['_action_'] == FALSE) {
		print '
			<div class="container">
				<h1>Register</h1>
					<p>Please fill in this form to create an account.</p>
					<hr>
					
					<form action="" id="registration_form" name="registration_form" method="POST">
						<input type="hidden" id="_action_" name="_action_" value="TRUE">
						
						<label for="fname">First Name</label>
						<input type="text" id="fname" name="firstname" placeholder="Your name..">

						<label for="lname">Last Name</label>
						<input type="text" id="lname" name="lastname" placeholder="Your last name..">
						
						<label for="country">Country</label>
						<select id="country" name="country">
							<option value="">Pick a country</option>';
							$query  = "SELECT * FROM countries";
							$result = @mysqli_query($MySQL, $query);
							while($row = @mysqli_fetch_array($result)) {
								print '<option value="' . $row['country_code'] . '">' . $row['country_name'] . '</option>';
							}
						print '
						</select>
						
						<label for="username"><b>Username</b></label>
						<input type="text" placeholder="Enter Username" name="username" id="username" required>
						
						<label for="email"><b>Email</b></label>
						<input type="text" placeholder="Enter Email" name="email" id="email" required>

						<label for="psw"><b>Password</b></label>
						<input type="password" placeholder="Enter Password" name="password" id="password" required>

						
						<button type="submit">Register</button>
					  

					  
					</form>
			</div>';
	}
	else if ($_POST['_action_'] == TRUE) {
		
		$query  = "SELECT * FROM users";
		$query .= " WHERE email='" .  $_POST['email'] . "'";
		$query .= " OR username='" .  $_POST['username'] . "'";
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result, MYSQLI_ASSOC);
		
		if ($row['email'] == '' || $row['username'] == '') {
			$pass_hash = password_hash($_POST['password'], PASSWORD_DEFAULT, ['cost' => 12]);
			
			$query  = "INSERT INTO users (firstname, lastname, email, username, password, country)";
			$query .= " VALUES ('" . $_POST['firstname'] . "', '" . $_POST['lastname'] . "', '" . $_POST['email'] . "', '" . $_POST['username'] . "', '" . $pass_hash . "', '" . $_POST['country'] . "')";
			$result = @mysqli_query($MySQL, $query);
			
			
			echo '<p>Thank you for registration </p>
			<hr>';
		}
		else {
			echo '<p>User with this email or username already exist!</p>';
		}
	}
?>