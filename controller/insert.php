<?php
require "../include/config.php";
$sql = "INSERT INTO user (username, email, password)
VALUES ('John', 'john@example.com','Doe');";
$sql .= "INSERT INTO user (username, email, password)
VALUES ('Juli', 'juli@example.com','Jue');";
$sql .= "INSERT INTO user (username, email, password)
VALUES ('Morgan', 'morgan@example.com','Morg');";

if (mysqli_multi_query($conn, $sql)) {
  echo "New records created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

?>
