<?php
include("connection.php");
 //creating a query
 $stmt = $con->prepare("select * from notification");

 //executing the query
 $stmt->execute();

 //binding results to the query
 $stmt->bind_result($id,$adminid, $eventname, $date, $place, $time, $discription,$image);

 $products = array();

 //traversing through all the result
 while($stmt->fetch()){
  $temp = array();

$temp['id'] = $id;
$temp['adminid'] = $adminid;
$temp['eventname'] = $eventname;
$temp['date'] = $date;
$temp['place'] = $place;
$temp['time'] = $time;
$temp['discription'] = $discription;
$temp['image'] = $image;

array_push($products, $temp);
}

//displaying the result in json format
echo json_encode($products);
?>