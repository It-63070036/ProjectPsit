<?php
require('dbconnect.php');
$total=array_sum($_POST["cals"]);
$cals=implode(",",$_POST["cals"]); 
$sql = "INSERT INTO fastfood(totalcal,cals) VALUES('$total','$cals')";


$result=mysqli_query($con,$sql);

if($result){
    echo "บันทึกข้อมูลเรียบร้อย";
}
else{
    echo mysqli_errors($con);
}

?>
