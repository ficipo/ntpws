<?php 
	# Stop Hacking attempt
	define('__APP__', TRUE);
	
	# Start session
    session_start();
	
	# Database connection
	include ("conectdb.php");
	
	# Variables MUST BE INTEGERS
    if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
	if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }
	
	# Variables MUST BE STRINGS A-Z
    if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }
	
	if (!isset($menu)) { $menu = 1; }
	
	# Classes & Functions
    #include_once("functions.php");
	
print '
<!DOCTYPE html>
<html >
	
	
	<head>
		<title>NewsPortal</title>
		
		
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta name="description" content="Portal za vijesti i sport,NewsPortal">
		<meta name="keywords" content="portal,vijesti,news,sport">
		<meta name="author" content="Filip Sikirić">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="icon.ico">
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<header>
			<div class="cover-img"></div>
			<nav>
				<ul>
				  <li><a href="index.php?menu=1">Home</a></li>
				  <li><a href="index.php?menu=2">News</a></li>
				  <li><a href="index.php?menu=3">Contact</a></li>
				  <li><a href="index.php?menu=4">About</a></li>
				  
				  <li><a href="index.php?menu=5">Register</a></li>
				  <li><a href="index.php?menu=6">Sign in</a></li>
				</ul>
			</nav>
		</header>
		<main>';
		
		if (isset($_SESSION['message'])) {
			print $_SESSION['message'];
			unset($_SESSION['message']);
		}
	
	# Homepage
	if (!isset($menu) || $menu == 1) { include("home.php"); }
	
	# News
	else if ($menu == 2) { include("news.php"); }
	
	# Contact
	else if ($menu == 3) { include("contact.php"); }
	
	# About us
	else if ($menu == 4) { include("about-us.php"); }
	
	# Register
	else if ($menu == 5) { include("register.php"); }
	
	# Signin
	else if ($menu == 6) { include("signin.php"); }
	
	# Admin webpage
	else if ($menu == 7) { include("admin.php"); }
	
	print '
			
		
	</main>
	<footer>
		<p>Copyright &copy; 2021. Sikirić Filip. <a href="https://github.com/ficipo/ntpws"><img src="img/GitHub-Mark-Light-64px.png"  title="Github" alt="Github"></a></p>
	</footer>

	</body>
</html>';
?>