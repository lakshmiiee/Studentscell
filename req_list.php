<?php
include("connection.php");
$status="Approved";
 //creating a query
 $stmt = $con->prepare("select id,user_id,name,department,description,image from requirement where status='$status'");

 //executing the query
 $stmt->execute();

 //binding results to the query
 $stmt->bind_result($id,$user_id,$name,$department,$description,$image);

 $products = array();

 //traversing through all the result
 while($stmt->fetch()){
  $temp = array();

$temp['id'] = $id;
$temp['user_id'] = $user_id;
$temp['name'] = $name;
$temp['department'] = $department;
$temp['description'] = $description;
$temp['image'] = $image;

array_push($products, $temp);
}

//displaying the result in json format
echo json_encode($products);
?>