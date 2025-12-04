

<?php
include("connection.php");


$user_id=$_POST['user_id'];
$name=$_POST['name'];
$department=$_POST['department'];
$description=$_POST['description'];


			 $originalImgName= $_FILES['filename']['name'];
			 $tempName= $_FILES['filename']['tmp_name'];
			 $folder="uploads/";
if (move_uploaded_file($tempName,$folder.$originalImgName)) 
            {
	// code...
	$query="insert into requirement (user_id,name,department,description,image) values('$user_id','$name','$department','$description','$originalImgName')";
	if(mysqli_query($con,$query))
	                {

	                	 $response['status'] = "1";
	                   $response['message'] = "File uploaded successfully";
	                }
					else
					{
	                	$response['status'] = "0";
	                  $response['message'] = "Data insertion failed";
	                }

	        }
			else
			{
	        	$response['status'] = "0";
	          $response['message'] = "File moving failed";
	        }





	echo json_encode($response);
?>


