<?php
//include config in all your php files
define('DB_NAME', 'sreekrishna');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');
function open_mysql_connection(){
	$con = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
	if (mysqli_connect_errno()){
	  return 0;
	}else{
		return $con;
	}
}
?>