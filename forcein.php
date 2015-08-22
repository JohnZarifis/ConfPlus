<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }

$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];
//$psw = $_SESSION['user_psw'];
//print_r($_SESSION); 

if (isset($_GET['attendeeid'])){
			 $attendeeid = $_GET['attendeeid'];
			$sqlins = "insert into transactions (attendeeid,type,comment) values ({$attendeeid}  , 'in','force')  ";
	        $database->query($sqlins); 
			 
}
header('Location:presentin.php');


?>
