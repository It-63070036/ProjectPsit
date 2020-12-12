<?php
require'./dbConnect';
$lan= implode(","$POST['l']);
$sql="insert into contact(kcal) values('$lan)";
$result=mysql_query($con, $sql);
if($result){
    echo"บันทึกข้อมูลเรียบร้อย<br>";
    echo"<a href='menu.php'>บันทึกข้อมูล</a>";
}else{
    echo my sql_error($con);
}