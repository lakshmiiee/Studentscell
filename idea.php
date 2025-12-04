<?php
include("connection.php");


$user_id=$_POST['user_id'];
$name=$_POST['name'];
$department=$_POST['department'];
$idea=$_POST['idea'];
$query="insert into idea (user_id,name,department,idea) values('$user_id','$name','$department','$idea')";
	if(mysqli_query($con,$query))
	                {

	                	 $response['status'] = "1";
	                   $response['message'] = "shared successfully";
	                }
					else
					{
	                	$response['status'] = "0";
	                  $response['message'] = "sharing failed";
	                }



	echo json_encode($response);
?>
