<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];

if (isset($_GET['amka'])){
$amka = $_GET['amka'];


$template = $twig->loadTemplate('exam.html');  
        echo $template->render(array('username' => $username,                                     
                                     'amka'=>$amka
                               ));
        
}       
else{
$template = $twig->loadTemplate('exam.html');  
        echo $template->render(array('username' => $username,                                     
                                     
                                    
                                    ));


}