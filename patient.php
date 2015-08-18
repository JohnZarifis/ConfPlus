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
$sql = " SELECT p.amka, name ,surname,birthdate ,address,phone,gender,disease,smoking,alcohol,alergies,morediseases,moredisdescr "
        . "FROM patient p "
        . "inner join history h on h.amka = p.amka "
        . "WHERE p.amka = {$amka}";

//print_r($sql); // for debugging
//print_r($username);
//print_r($id);

$result_set = $database->query($sql);
while ($row = mysql_fetch_assoc($result_set)) 
			{
                         $amka = $row['amka'];                                               
                         $name = $row['name'];
                         $surname = $row['surname'];
                         $birthdate = $row['birthdate'];
                         $adrress= $row['address'];
                         $phone =$row['phone'];
                         $gender= $row['gender'];
                         $disease=$row['disease'];
                         $smoking = $row['smoking'];
                         $alcohol = $row['alcohol'];
                         $morediseases = $row['morediseases'];
                         $moredisdescr = $row['moredisdescr'];
			}
//echo($name);
//print_r($surname);
//print_r($birthdate);
        $template = $twig->loadTemplate('patient.html');  
        echo $template->render(array('username' => $username,                                     
                                     'amka'=>$amka,
                                     'gender'=>$gender,
                                     'name'=>$name,
                                     'surname'=>$surname,
                                     'adrress'=>$adrress,
                                     'phone'=>$phone,
                                     'disease' =>$disease,
                                     'birthdate'=>$birthdate,
                                     'smoking' =>$smoking,
                                     'alcohol'=>$alcohol,
                                     'morediseases'=>$morediseases,
                                     'moredisdescr'=>$moredisdescr,
                                    ));

}
else{
$template = $twig->loadTemplate('patient.html');  
        echo $template->render(array('username' => $username,                                     
                                     
                                    
                                    ));


}

?>





