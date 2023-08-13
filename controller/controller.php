<?php
require "../configuration.php";

if(isset($_REQUEST['process']) && $_REQUEST['process']=="login"){
    $username=$_REQUEST['username'];
    $password=$_REQUEST['password'];
    echo $sql = "SELECT * FROM user WHERE username='$username' || password='$password'";
    $result = $conn->query($sql);                 

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Name: " . $row["username"]. " " . $row["email"]. "<br>";
    $_SESSION['username']=$row["username"];              
    header("location:/admin1/user-list.php");

  }
} else {
  echo "0 results";
}
    }
elseif(isset($_REQUEST['process']) && $_REQUEST['process']=="signup"){
  $username=$_POST['username'];
    $email=$_POST['email'];
    $gender=$_POST['gender'];
    $password=$_POST['password'];
    $file=time().$_FILES['photo']['name'];

    $target_file='upload/';

    //move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file);

    move_uploaded_file($_FILES['photo']['tmp_name'], "C:/xampp/htdocs/admin1/controller/upload/".$file);


    echo $query="INSERT INTO user(username,email,gender,password,pic) values('$username','$email','$gender','$password','$file')";
    $result=$conn->query($query);
}
?>

