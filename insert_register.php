<?php
include ('condb.php');

$name = $_POST['firstname'];
$lastname = $_POST['lastname'];
$phone = $_POST['phone'];
$username = $_POST['username'];
$password = $_POST['password'];

$sql ="INSERT INTO member(name,lastname,phone,username,password)
Values('$name','$lastname','$phone','$username','$password')";
$result=mysqli_query($conn,$sql);
if($result){
    echo"<script> alert('บันทึกแล้ว');<script>";
    echo"<script> window.location='register.php';<script>";
}else{
    echo"Error".$sql."<br>".mysqli_error($conn);
    echo"<script> alert('บันทึกไม่ได้');<script>";
}
mysqli_close($conn);

?>