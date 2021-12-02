<?php
	if ($_POST['_action_'] == False) {
		print '
		<h2>Sign in</h2>
		<form action="" method="post">
		  <div class="container">
			<input type="hidden" id="_action_" name="_action_" value="TRUE">
			
			<label for="username"><b>Username</b></label>
			<input type="text" placeholder="Enter Username" id="username" name="username" required>

			<label for="password"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" id="password" name="password" required>
				
			<button type="submit">Sign in</button>
			
		  </div>
		</form>';
	}else if($_POST['_action_'] == True){
		$query  = "SELECT * FROM users";
		$query .= " WHERE username='" .  $_POST['username'] . "'";
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result, MYSQLI_ASSOC);
		
		if (password_verify($_POST['password'], $row['password'])) {
			
			$_SESSION['user']['valid'] = 'true';
			$_SESSION['user']['id'] = $row['id'];
			$_SESSION['user']['firstname'] = $row['firstname'];
			$_SESSION['user']['lastname'] = $row['lastname'];
			$_SESSION['message'] = '<p>Dobrodošli, ' . $_SESSION['user']['firstname'] . ' ' . $_SESSION['user']['lastname'] . '</p>';
			# Redirect to admin website
			header("Location: index.php?menu=7");
		}
		else {
			unset($_SESSION['user']);
			$_SESSION['message'] = '<p>You entered wrong email or password!</p>';
			header("Location: index.php?menu=6");
		}
	}
?>