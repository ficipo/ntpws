<?php 
	
	#Add news
	if (isset($_POST['_action_']) && $_POST['_action_'] == 'add_news') {
		$_SESSION['message'] = '';
		
		$query  = "INSERT INTO news (title, description)";
		$query .= " VALUES ('" . htmlspecialchars($_POST['title'], ENT_QUOTES) . "', '" . htmlspecialchars($_POST['description'], ENT_QUOTES) . "')";
		$result = @mysqli_query($MySQL, $query);
		
		$ID = mysqli_insert_id($MySQL);
		
		
        if($_FILES['picture']['error'] == UPLOAD_ERR_OK && $_FILES['picture']['name'] != "") {
                
			
			
            $_picture = $ID . '-' . rand(1,100) . '.jpg';
			copy($_FILES['picture']['tmp_name'], "news-img/".$_picture);
			$_query  = "UPDATE news SET picture='" . $_picture . "'";
			$_query .= " WHERE id=" . $ID . " LIMIT 1";
			$_result = @mysqli_query($MySQL, $_query);
			
        }
		
		
		$_SESSION['message'] .= '<p>You successfully added news!</p>';
		
	
		header("Location: index.php?menu=7&action=2");
	}
	
	# Update news
	if (isset($_POST['_action_']) && $_POST['_action_'] == 'edit_news') {
		$query  = "UPDATE news SET title='" . $_POST['title'] . "', description='" . htmlspecialchars($_POST['description'], ENT_QUOTES)."'";
        $query .= " WHERE id=" . (int)$_POST['edit'];
        $query .= " LIMIT 1";
        $result = @mysqli_query($MySQL, $query);
		
		# picture
        if($_FILES['picture']['error'] == UPLOAD_ERR_OK && $_FILES['picture']['name'] != "") {
                
			
            
			$_picture = (int)$_POST['edit'] . '-' . rand(1,100) .'.jpg';
			copy($_FILES['picture']['tmp_name'], "news-img/".$_picture);
			
			
			
			$_query  = "UPDATE news SET picture='" . $_picture . "'";
			$_query .= " WHERE id=" . (int)$_POST['edit'] . " LIMIT 1";
			$_result = @mysqli_query($MySQL, $_query);
			$_SESSION['message'] .= '<p>You successfully added picture.</p>';
			
        }
		
		$_SESSION['message'] = '<p>You successfully changed news!</p>';
		
	
		header("Location: index.php?menu=7&action=2");
	}
	
	
	# Delete news
	if (isset($_GET['delete']) && $_GET['delete'] != '') {
		
		
        $query  = "SELECT picture FROM news";
        $query .= " WHERE id=".(int)$_GET['delete']." LIMIT 1";
        $result = @mysqli_query($MySQL, $query);
        $row = @mysqli_fetch_array($result);
        @unlink("news-img/".$row['picture']); 
		
		
		$query  = "DELETE FROM news";
		$query .= " WHERE id=".(int)$_GET['delete'];
		$query .= " LIMIT 1";
		$result = @mysqli_query($MySQL, $query);

		$_SESSION['message'] = '<p>You successfully deleted news!</p>';
		
		
		header("Location: index.php?menu=7&action=2");
	}

	
	
	#Show news info
	if (isset($_GET['id']) && $_GET['id'] != '') {
		$query  = "SELECT * FROM news";
		$query .= " WHERE id=".$_GET['id'];
		$query .= " ORDER BY date DESC";
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result);
		print '
		<h2>News overview</h2>
		<div class="news">
			<img src="news-img/' . $row['picture'] . '" alt="' . $row['title'] . '" title="' . $row['title'] . '">
			<h2>' . $row['title'] . '</h2>
			' . $row['description'] . '
			<time datetime="' . $row['date'] . '"></time>
			<hr>
		</div>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	
	#Add news 
	else if (isset($_GET['add']) && $_GET['add'] != '') {
		
		print '
		<h2>Add news</h2>
		<form action="" id="news_form" name="news_form" method="POST" enctype="multipart/form-data">
			<input type="hidden" id="_action_" name="_action_" value="add_news">
			
			<label for="title">Title *</label>
			<input type="text" id="title" name="title" placeholder="News title.." required>
			<label for="description">Description *</label>
			<textarea id="description" name="description" placeholder="News description.." required></textarea>
				
			<label for="picture">Picture</label>
			<input type="file" id="picture" name="picture">
						
			
			
			<hr>
			
			<input type="submit" value="Submit">
		</form>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	#Edit news
	else if (isset($_GET['edit']) && $_GET['edit'] != '') {
		$query  = "SELECT * FROM news";
		$query .= " WHERE id=".$_GET['edit'];
		$result = @mysqli_query($MySQL, $query);
		$row = @mysqli_fetch_array($result);
	

		print '
		<h2>Edit news</h2>
		<form action="" id="news_form_edit" name="news_form_edit" method="POST" enctype="multipart/form-data">
			<input type="hidden" id="_action_" name="_action_" value="edit_news">
			<input type="hidden" id="edit" name="edit" value="' . $row['id'] . '">
			
			<label for="title">Title *</label>
			<input type="text" id="title" name="title" value="' . $row['title'] . '" placeholder="News title.." required>
			<label for="description">Description *</label>
			<textarea id="description" name="description" placeholder="News description.." required>' . $row['description'] . '</textarea>
				
			<label for="picture">Picture</label>
			<input type="file" id="picture" name="picture">
						
			
			
			<hr>
			
			<input type="submit" value="Submit">
		</form>
		<p><a href="index.php?menu='.$menu.'&amp;action='.$action.'">Back</a></p>';
	}
	else {
		print '
		<h2>News</h2>
		
			<table>
				<thead>
					<tr>
						<th width="16"></th>
						<th width="16"></th>
						<th width="16"></th>
						<th>Title</th>
						<th>Description</th>
						<th width="16"></th>
					</tr>
				</thead>
				<tbody>';
				$query  = "SELECT * FROM news";
				$query .= " ORDER BY date DESC";
				$result = @mysqli_query($MySQL, $query);
				while($row = @mysqli_fetch_array($result)) {
					print '
					<tr>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;id=' .$row['id']. '">View</a></td>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;edit=' .$row['id']. '">Edit</a></td>
						<td><a href="index.php?menu='.$menu.'&amp;action='.$action.'&amp;delete=' .$row['id']. '">Delete</a></td>
						<td>' . $row['title'] . '</td>
						<td>';
						if(strlen($row['description']) > 160) {
                            echo substr(strip_tags($row['description']), 0, 160).'...';
                        } else {
                            echo strip_tags($row['description']);
                        }
						
						print '
						</td>
					</tr>';
				}
			print '
				</tbody>
			</table>
			<a href="index.php?menu=' . $menu . '&amp;action=' . $action . '&amp;add=true" class="AddNewsLink">Add news</a>';
	}
	
	# Close MySQL connection
	@mysqli_close($MySQL);
?>