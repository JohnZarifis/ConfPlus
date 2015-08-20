<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];

if (isset($_POST['in'])) {
        # Publish-button was clicked
     echo "he is in: ";
     echo $_POST['attendeeid'];
     
     }
    elseif (isset($_POST['out'])) {
        # Save-button was clicked
        echo "he is out: ";
     echo $_POST['attendeeid'];
    #header( 'Location: index.php') ; 
    }
    