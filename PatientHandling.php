<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];

if (isset($_POST['exam'])) {
        # Publish-button was clicked
echo "exam";}
    elseif (isset($_POST['save'])) {
        # Save-button was clicked
    header( 'Location: index.php') ; 
    }
    