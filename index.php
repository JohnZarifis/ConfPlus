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


$sql = "SELECT  attendeeid,name ,surname, comments FROM attendee;";


$result_set = $database->query($sql);
$MultiDimArray = array();
while ($row = mysql_fetch_assoc($result_set)) 
			{
                         $MultiDimArray[] = array ( 
                                                    'name' => $row['name'],
                                                    'surname'=>$row['surname'],
                                                    'comments'=>$row['comments'],
                                                    'attendeeid'=>$row['attendeeid']
                             );
			}

$attendeeno = 0;
foreach($MultiDimArray as $result){
    
    $attendeeno +=1;
    
    }      


$template = $twig->loadTemplate('index.html');  
        echo $template->render(array('username' => $username,
                                     'attendeeno' =>$attendeeno,
                                     'res'=>$MultiDimArray,
                                    
                                    ));

?>
