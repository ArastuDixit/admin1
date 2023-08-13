<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>

<?php
if(isset($_GET['id'])){
$id=$_GET['id'];

$sql="delete from user where `id`='$id'";
$result = $conn->query($sql);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    else{
        header('location:user-list.php?delete_msg=you have deleted record');
}
}
?>