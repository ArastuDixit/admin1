                       
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
<!--  -->
<?php
    if(isset($_POST['add'])){
    // $id=$_POST['id'];
    $name=$_POST['name'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    if($name == "" || empty($name)){
        header('location:user-list.php?message=You need to fill in the first name!');
    }
    else{
        $sql="insert into  `user` (`name`, `username`, `password`) values ('$name','$username','$password')";
        $result = $conn->query($sql);
        if (!$result) {
            die("Connection failed: " . $conn->connect_error);
    }   else{
        header('location:user-list.php?insert_msg=you have added data successfully.');
        
            }
    }
}
?>

<?php
if(isset($_GET['id'])){
    $id=$_GET['id'];

    echo $sql = "SELECT * FROM user";
    $result = $conn->query($sql);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    else{
        $row = $result->fetch_assoc();
    
    }
}
?>

<form action="add.php?" method="post">
    <div class="form-group">
        <label for="id">id</label>
        <input type="int" name="id" class="form-control" value="<?php echo $row['id']?>">
    </div>
    <div class="form-group">
        <label for="name">name</label>
        <input type="text" name="name" class="form-control" value="<?php echo $row['name']?>">
    </div>
    <div class="form-group">
        <label for="username">username</label>
        <input type="text" name="username" class="form-control" value="<?php echo $row['username']?>">
    </div>
    <div class="form-group">
        <label for="password">password</label>
        <input type="text" name="password" class="form-control" value="<?php echo $row['password']?>">
    </div>
    <input type="submit" class="btn btn-success" name="add" value="add">
</form>
