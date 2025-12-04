<?php
 
        include("connection.php");

        $name = $_POST['name'];
        $date = $_POST['date'];
        $dte = $_POST['dte'];
        $age = $_POST['age'];
        $accno = $_POST['accno'];
        $ifc = $_POST['ifc'];
        $brnch = $_POST['brnch'];
        $ddlne = $_POST['ddlne'];

        $originalImgName=$_FILES['filename']['name'];
        $tempName=$_FILES['filename']['tmp_name'];
        $folder="uploads/";
        
                  if (move_uploaded_file($tempName,$folder.$originalImgName))
                  {
                $query = "insert into fundd(name,fundraise,date,age,acc_no,ifsc_code,branchname,deadline,image) values('$name','$dte', '$date','$age','$accno','$ifc','$brnch','$ddlne','$originalImgName')";

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
        else{
        $response['status'] = "0";
          $response['message'] = "File moving failed";
        }

        echo json_encode($response);
  
?> 
  
