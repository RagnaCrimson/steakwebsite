<?php 
    $servername = "127.0.0.1:3306";
    $username = "root";
    $password = "";
    $dbname = "db_member";

    // Create Connection
    $conn = mysqli_connect($servername,$username,$password,$dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
        }
        
        
?>