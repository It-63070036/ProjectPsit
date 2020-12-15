<?php
    $servername = "localhost";
    $username = "food";
    $password = "123456";
    
    try {
      $conDB = new PDO("mysql:host=$servername;dbname=food_db", $username, $password);
      // set the PDO error mode to exception
      $conDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      //echo "Connected successfully";
    } catch(PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
    }
    
?>