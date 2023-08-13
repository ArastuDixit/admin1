<?php
session_start();
unset($_SESSION["id"]);
unset($_SESSION["name"]);
// destroy the session
session_destroy();
header("Location:log.php");
?>