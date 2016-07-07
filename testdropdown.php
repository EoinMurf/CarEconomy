
<?php
	$dbname = "cars";
  	$hostname = "localhost";
  	$username = "root";
  	$password = "password";
	$port = "3306";

	$make = $_POST["make"]; 
	$year = $_POST["year"]; 
	$type = $_POST["type"];
	
	@ $db = new mysqli("$hostname", "$username", "$password", "$dbname", "$port");
	if (mysqli_connect_errno()) {
		echo 'Error: Could not connect to database.  Please try again later.';
		exit;
	}
	else{
		$query2 = "select model.idCarModel, model.modelName from model inner join make on model.makeid = make.idmake inner join years on make.idYear = years.idyear inner join transmission on model.idCarModel = transmission.idModelTransmission where make.MakeName = '$make' && years.yearName ='$year' && transmission.transmissionType ='$type'";
		//$query1 = "select model.modelName from model inner join make on model.makeid = make.idmake inner join years on make.idYear = years.idyear where make.MakeName = '$make' && years.yearName ='$year'";
		//$query0 = 'SELECT modelName FROM cars.model  inner join make on model.makeid = make.idmake where make.makeName = "bmw"';
		//select model.idCarModel, model.modelName from model inner join make on model.makeid = make.idmake inner join years on make.idYear = years.idyear inner join transmission on model.idCarModel = transmission.idModelTransmission where make.MakeName = 'audi' && years.yearName ='2000' && transmission.transmissionType ='Manual';
		$result = $db->query($query2);
		//$result = $mysqli->query($query2);
		//$data = array($row["idCarModel"], $row["modelName"]);
		//$row = mysqli_fetch_row($result);
			//$ro=mysqli_fetch_assoc($result);
				//$ro=mysqli_fetch_all($result,MYSQLI_ASSOC);
				//$id=$ro["idCarModel"];
				//$name=$ro["modelName"];	
			 //$data=array("cid"=>$id,"mname"=>$name);


		
		
		
		$count = mysqli_num_rows($result);
		for($i=0; $i < $count;$i++){
        	$row = mysqli_fetch_row($result);
			
			$data[] = $row;
		}
		
	
		echo json_encode($data);
		mysqli_close($db);	
	}
	?>