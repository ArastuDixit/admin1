<?php
// PHP program to delete a file named gfg.txt
// using unlink() function

$file_pointer = "C:/xampp/htdocs/admin1/controller/upload/1676971888";

// Use unlink() function to delete a file
if (!unlink($file_pointer)) {
	echo ("$file_pointer cannot be deleted due to an error");
}
else {
	echo ("$file_pointer has been deleted");
}

?>

