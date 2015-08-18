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


$sql = "SELECT amka, name ,surname,birthdate ,address,phone,gender FROM patient;";


$result_set = $database->query($sql);
$MultiDimArray = array();
while ($row = mysql_fetch_assoc($result_set)) 
			{
                         $MultiDimArray[] = array ( 'amka' => $row['amka'],
                                                    'name' => $row['name'],
                                                    'surname'=>$row['surname'],
                                                    'birthdate'=>$row['birthdate'],
                                                    'address'=>$row['address'],
                                                    'phone'=>$row['phone'],
                                                    'gender'=>$row['gender'],
                                                     
                             );
			}

$patientno = 0;
foreach($MultiDimArray as $result){
    
    $patientno +=1;
    
    }      


$template = $twig->loadTemplate('index.html');  
        echo $template->render(array('username' => $username,
                                     'patientno' =>$patientno,
                                     'res'=>$MultiDimArray,
                                    
                                    ));

?>
