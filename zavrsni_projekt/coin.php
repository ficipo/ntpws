<?php 
	print '
	<h1>Crypto Coin Search</h1>';
	if (!isset($_POST['action']) || $_POST['action'] == '') { $_POST['action'] = FALSE; }
		
		if ($_POST['action'] == FALSE) {
			print '
			<div class="searchbar">
				<form action="" method="POST">
					<input type="hidden" name="action" value="TRUE">
					<input type="text" name="coinName" id="coinName"placeholder="Search Crypto Coins..">
					<button type="submit">Submit</button>
				</form>
			</div>';
			 
				
		} 
		else if ($_POST['action'] == TRUE) {
			$curl = curl_init();

			curl_setopt_array($curl, [
				CURLOPT_URL =>'https://investing-cryptocurrency-markets.p.rapidapi.com/coins/search?string=' . urlencode($_POST['coinName']) . '&time_utc_offset=28800&lang_ID=1',
				CURLOPT_RETURNTRANSFER => true,
				CURLOPT_FOLLOWLOCATION => true,
				CURLOPT_ENCODING => "",
				CURLOPT_MAXREDIRS => 10,
				CURLOPT_TIMEOUT => 30,
				CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
				CURLOPT_CUSTOMREQUEST => "GET",
				CURLOPT_HTTPHEADER => [
					"x-rapidapi-host: investing-cryptocurrency-markets.p.rapidapi.com",
					"x-rapidapi-key: a74874be13msh53e84474afc0181p123612jsn56a3fb29198c"
				],
			]);

			$response = curl_exec($curl);
			$err = curl_error($curl);

			curl_close($curl);
			print '
			<h1>Result of your search</h1>';
			echo $response;
			print '
			<h1>API dio nije zavrsen do kraja  :( </h1>';
			
		}
	print '
	</div>';
?>