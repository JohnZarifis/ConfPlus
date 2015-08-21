<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];

if (isset($_POST['in'])) {
    # in-button was clicked
   $attendeeid = $_POST['attendeeid'];
$typeOfMove = 'in';
    //echo "he is in: ";
     //echo $_POST['attendeeid'];
     }
    elseif (isset($_POST['out'])) {
        # Save-button was clicked
        $attendeeid = $_POST['attendeeid'];
		$typeOfMove = 'out';
       // echo "he is out: ";
       //echo $_POST['attendeeid'];
    #header( 'Location: index.php') ; 
    }
	elseif(isset($_POST['ignore'])){
     $sql = "insert into transactions (attendeeid,type,timest) values      ";
			 
	}
$sql =      "select a.attendeeid,a.name,a.surname, a.comments,c.category, v.name as venue from attendee a "
              ."inner join access c on a.attendeeid = c.attendeeid inner join venues v on v.category = c.category "
			  ."where a.attendeeid = {$attendeeid} and DAY(v.starts) = DAY(CURDATE()) and hour(v.starts) <= hour(now()) + 1";
			  
$result_set = $database->query($sql);	
$MultiDimArray = array();
while ($row = mysql_fetch_assoc($result_set)) 
			{
                         $MultiDimArray[] = array (
												   'attendeeid'=>$row['attendeeid'],
                                                    'name' => $row['name'],
                                                    'surname'=>$row['surname'],
                                                    'comments'=>$row['comments'],                                                    												
													'category' => $row['category'],
													'venue' => $row['venue'],
                             );
			}

$attendeeno = 0;
foreach($MultiDimArray as $result){
    
    $attendeeno +=1;
	
    
    }      
if($attendeeno == 0) {
			 $message = 'No access at this time of day';
			 echo $message;
			 
}else{
           $message = 'access is OK !!!';
			$template = $twig->loadTemplate('attendancehandling.html');  
            echo $template->render(array('username' => $username,
                                     'attendeeno' =>$attendeeno,
                                     'res'=>$MultiDimArray,
									 'message'=>$message,
                                    
                                    )); 
}

	
	
	
	