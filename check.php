<?php
    session_start();
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'taken';
    
    $conn = mysqli_connect($host, $user, $pass, $db);
	
	if($_POST['type']==2){
		$email=$_POST['email'];
		$password=$_POST['password'];
		$check=mysqli_query($conn,"select * from  where email='$email' and datesign='$date'");
		if (mysqli_num_rows($check)>0)
		{
			$_SESSION["email"]=$email;			           
    		echo json_encode(array("statusCode"=>200));
		}
		else{
			echo json_encode(array("statusCode"=>201));
		}
		mysqli_close($conn);
	}
?>
  