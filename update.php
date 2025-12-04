<?php
include("connection.php");
$id=$_POST["id"];
$fname=$_POST["first_name"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$password=$_POST["password"];
$username=$_POST["user_name"];


$query="update user_registration set first_name='$fname',email='$email',phone='$phone' , password='$password',user_name='$username' where id='$id'";

$result=mysqli_query($con,$query);
if($result)
{
    $response["status"]="1";
    $respose["Successfull"]="Updation successfull";
}
else
{
    $response["status"]="0";
    $response["failed"]="Updation failed";
}
echo json_encode($respose);
?>