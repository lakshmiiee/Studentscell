<?php
include ("connection.php");
$status="Approved";

 //creating a query
 $stmt = $con->prepare("select id,user_id,name,department,idea from idea where status='$status'");

 //executing the query
 $stmt->execute();

 //binding results to the query
 $stmt->bind_result($id,$user_id,$name,$department,$idea);

 $products = array();

 //traversing through all the result
 while($stmt->fetch()){
  $temp = array();

$temp['id'] = $id;
$temp['user_id'] = $user_id;
$temp['name'] = $name;
$temp['department'] = $department;
$temp['idea'] = $idea;

array_push($products, $temp);
}

//displaying the result in json format
echo json_encode($products);
?>