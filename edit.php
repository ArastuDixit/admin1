
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
if(isset($_GET['id'])){
    $id=$_GET['id'];

            $sql = "SELECT * FROM `user` WHERE `id`='$id'";
            $result = $conn->query($sql);
            if(!$result){
                die("Connection failed: " . $conn->connect_error);
            }
            else{
                $row = mysqli_fetch_assoc($result);
                // print_r($row);
            }
        }
?>
<?php
if(isset($_POST['edit'])){
    if(isset($_GET['id_new'])){
        $idnew=$_GET['id_new'];
    }
    // $id=$_POST['id'];
    $name=$_POST['name'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $sql="update `user` set `name`='$name', `username`='$username', `password`='$password' where `id`='$idnew'";
    $result = $conn->query($sql);
    if(!$result){
        die("Connection failed: " . $conn->connect_error);
    }
    else{
            
        header('location:user-list.php?update_msg=you have edited successfully.');
    }

}
?>

<form action="edit.php?id_new=<?php echo $id; ?>" method="post">
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
    <input type="submit" class="btn btn-success" name="edit" value="update">
</form>

