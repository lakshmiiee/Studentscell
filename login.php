<?php
include("connection.php");

$username=$_POST["username"];
$password=$_POST["password"];

$query="select * from user_registration where user_name='$username' && password='$password'";

$result=mysqli_query($con,$query);
$row=mysqli_fetch_row($result);


if(mysqli_num_rows($result)>0){

    $response["status"]="1";
    $response["message"]="Login successfull";
    $response['id']=$row[0];
    $response['first_name']=$row[1];
    $response['last_name']=$row[2];
    $response['phone']=$row[3];
    $response['email']=$row[4];
    $response['username']=$row[5];
    $response['password']=$row[6];
    $response['gender']=$row[7];
}
else
{
    $response["status"]="0";
    $response["message"]="Login failed";
    $response['id']="";
    $response['first_name']="";
    $response['last_name']="";
    $response['phone']="";
    $response['email']="";
    $response['username']="";
    $response['password']="";
    $response['gender']="";
}
echo json_encode($response);
?>