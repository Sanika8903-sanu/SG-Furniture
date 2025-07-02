<?php
include("includes/db.php");
extract($_POST);
$sql = "INSERT INTO `contact`(`name`,  `email`, `subject`, `message`) VALUES ('".$name."','".$email."','".$subject."','".$message."')";
$result = $mysqli->query($sql);
if(!$result){
    die("Couldn't enter data: ".$mysqli->error);
}
echo "Thank You For Contacting Us ";
$mysqli->close();
?>