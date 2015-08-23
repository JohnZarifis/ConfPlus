<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];
if (isset($_GET['attendeeid'])){
$attendeeid = $_GET['attendeeid'];
$sql = " SELECT a.attendeeid,a.name ,a.surname, a.comments , a.gender, c.category "
        . "FROM attendee a "
        . "left join access c on c.attendeeid = a.attendeeid "
        . " WHERE a.attendeeid = {$attendeeid}";

//print_r($sql); // for debugging
//print_r($username);
//print_r($id);

$result_set = $database->query($sql);
$tomasadv = 0;
$tomasbeg = 0;
$workshops =0;
$omilies = 0;

while ($row = mysql_fetch_assoc($result_set)) 
			{
                         $attendeeid = $row['attendeeid'];                                               
                         $name = $row['name'];
                         $surname = $row['surname'];
                         $gender= $row['gender'];
						 $comments = $row['comments'];
                        if($row['category'] == 'WORKSHOPS' ) $workshops+=1 ;
						if($row['category'] == 'omilies' ) $omilies+=1;
						if($row['category'] == 'TOMAS CLARK BEGINNERS' ) $tomasbeg+=1 ;
						if($row['category'] == 'TOMAS CLARK ADVANCED' ) $tomasadv+=1 ;
						//echo($row['category'] );
						//echo('<br>');
			}
//echo($omilies);
//echo($workshops);
//echo($tomasbeg);
//echo($tomasadv);
//print_r($surname);
//print_r($birthdate);
        $template = $twig->loadTemplate('attendee.html');  
        echo $template->render(array('username' => $username,                                     
                                     'attendeeid'=>$attendeeid,
                                     'gender'=>$gender,
                                     'name'=>$name,
                                     'surname'=>$surname,
									'tomasadv'=> $tomasadv ,
									'tomasbeg' => $tomasbeg ,
								     'workshops'=>$workshops ,
									 'omilies' =>$omilies ,
									 'comments'=>$comments,
                                     
                                    ));

}
else{
$template = $twig->loadTemplate('attendee.html');  
        echo $template->render(array('username' => $username,                                     
                                     
                                    
                                    ));


}

?>





