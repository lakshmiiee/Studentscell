<?php

include("connection.php");
  

$fname=$_POST["first_name"];
$lname=$_POST["last_name"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$username=$_POST["user_name"];
$password=$_POST["password"];
$gender=$_POST["gender"];

$query="insert into user_registration (first_name,last_name,phone,email,user_name,password,gender) 
values ('$fname','$lname','$phone','$email','$username','$password','$gender')";

$result=mysqli_query($con,$query) or die(mysqli_error($con));

if($result){
    $response["status"]="1";
    $response["message"]="Registration Sucessfull";
}
else
{
    $response["status"]="0";
    $response["message"]="Registration failed";
}
echo json_encode($response);
?>