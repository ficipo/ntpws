<?php 
	if ($_SESSION['user']['valid'] == 'true') {
	 $action=1;
	 include("admin-news.php"); 
	
	}
	else {
		$_SESSION['message'] = '<p>Please register or login using your credentials!</p>';
		header("Location: index.php?menu=6");
	}
?>