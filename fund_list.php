<?php
include("connection.php");
 //creating a query
 $status="Approved";
 $stmt = $con->prepare("select id,date,fundraise,name,age,acc_no,ifsc_code,branchname,deadline,image from fundd where status='$status' ");

 //executing the query
 $stmt->execute();

 //binding results to the query
 $stmt->bind_result($id,$date, $fundraise, $name, $age, $acc_no, $ifsc_code, $branchname, $deadline,$image);

 $products = array();

 //traversing through all the result
 while($stmt->fetch()){
  $temp = array();

$temp['id'] = $id;
$temp['date'] = $date;
$temp['fundraise'] = $fundraise;
$temp['name'] = $name;
$temp['age'] = $age;
$temp['accno'] = $acc_no;
$temp['ifc'] = $ifsc_code;
$temp['brnch'] = $branchname;
$temp['ddlne'] = $deadline;
$temp['image'] = $image;


array_push($products, $temp);
}

//displaying the result in json format
echo json_encode($products);
?>