<?php
	$dbname = "cars";
  	$hostname = "localhost";
  	$username = "root";
  	$password = "password";
	$port = "3306";


	@ $db = new mysqli("$hostname", "$username", "$password", "$dbname", "$port");
	if (mysqli_connect_errno()) {
		echo 'Error: Could not connect to database.  Please try again later.';
		exit;
	}
	else{
		$query1 = 'SELECT modelName FROM cars.model where makeid = 3';
		$result = $db->query($query1);
		$count = mysqli_num_rows($result);
	
		for($i=0;$i < $count;$i++)
		{
			$row = mysqli_fetch_row($result);
			$makes[] = $row[0];
		}
		echo JSON_encode($makes);
		mysqli_close($db);	 
	}
?>