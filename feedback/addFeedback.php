
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<?php
//including the database connection file
include_once("config.php");


if(isset($_POST['submit'])) {	
	$f_name = $_POST['first_name'];
	$l_name = mysqli_real_escape_string($mysqli, $_POST['last_name']);
	$program_name = mysqli_real_escape_string($mysqli, $_POST['program_name']);
	$session_date = mysqli_real_escape_string($mysqli, $_POST['session_date']);
    $session_day = mysqli_real_escape_string($mysqli, $_POST['session_day']);
	
	$challenges =  mysqli_real_escape_string($mysqli, $_POST['challenges']);
	$work_satisfy =  mysqli_real_escape_string($mysqli, $_POST['work_satisfy']);  
	$standards =  mysqli_real_escape_string($mysqli, $_POST['standards']);  
	$illustration =  mysqli_real_escape_string($mysqli, $_POST['illustration']);  
	$environment =  mysqli_real_escape_string($mysqli, $_POST['environment']);  
	$expression =  mysqli_real_escape_string($mysqli, $_POST['expression']);  
	$consious =  mysqli_real_escape_string($mysqli, $_POST['consious']);  
	$power =  mysqli_real_escape_string($mysqli, $_POST['power']);  
	$overall =  mysqli_real_escape_string($mysqli, $_POST['overall']);  
	
		// if all the fields are filled (not empty) 
			
		//insert data to database
		$qr = 	"INSERT INTO feedbacks(f_name,l_name,Program,p_date,p_day) VALUES('$f_name','$l_name','$program_name','$session_date','$session_day')";
		//echo $qr;
		$qr2 = "INSERT INTO feedback_ratings(challenges,work_satisfy,standards,illustration,environment,expression,consious,power,overall) VALUES('$challenges','$work_satisfy','$standards','$illustration','$environment','$expression','$consious','$power','$overall')";
		
		//echo $qr2;
		
		
		$result = mysqli_query($mysqli, $qr);
		$result_rating = mysqli_query($mysqli, $qr2);
		
		//display success message
		echo "<font color='green'>Data added successfully.";
		echo "<br/><a href='showFeedbacks.php'>Back</a>";
	
}

function values() {
	$f_name = $_POST['first_name'];
	$l_name = $_POST['last_name']);
	$program_name = $_POST['program_name']);
	$session_date = $_POST['session_date']);
    $session_day = $_POST['session_day']);
	
	$challenges =  $_POST['challenges']);
	$work_satisfy =  $_POST['work_satisfy']);  
	$standards =  $_POST['standards']);  
	$illustration =  $_POST['illustration']);  
	$environment =  $_POST['environment']);  
	$expression =  $_POST['expression']);  
	$consious =  $_POST['consious']);  
	$power =  $_POST['power']);  
	$overall =  $_POST['overall']);  
}



?>


<script>

	window.onload = function() {
		<?
      values();
		?>
	}
</script>
</body>
</html>
