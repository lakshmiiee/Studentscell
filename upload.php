<?php
include("connection.php");
$name=$_POST['name'];
$date=$_POST['date'];
$dte=$_POST['dte'];
$age=$_POST['age'];
$accno=$_POST['accno'];
$brnch=$_POST['brnch'];
$Image= $_FILES['filename']['name'];
$tempName= $_FILES['filename']['tmp_name'];
$folder="uploads/";
if (move_uploaded_file($tempName,$folder.$Image)) {
// code...
$query="insert into upload (Productname,Productprice,Image,sellerid,sellername,sellerphoneno,sellerusername) values('$Productname','$Productprice','$Image','$sellerid','$sellername','$sellerphoneno','$sellerusername')";
if(mysqli_query($con,$query)){

                $response['status'] = "1";
                  $response['message'] = "File uploaded successfully";
               }else{
                $response['status'] = "0";
                 $response['message'] = "Data insertion failed";
               }

       }else{
        $response['status'] = "0";
         $response['message'] = "File moving failed";
       
        }

echo json_encode($response);
?>

