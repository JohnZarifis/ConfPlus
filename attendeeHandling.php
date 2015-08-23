<?php
require_once ("includes/configs.php");
require_once ("includes/session.php");
require_once("includes/funcs.php");
require_once("includes/database.php");

if (!$session->is_logged_in()) { redirect_to("login.php"); }
$username = $_SESSION['user_name'];
$id = $_SESSION['user_id'];


if (isset($_POST['save'])) {
        # Save-button was clicked
        $attendeeid = $_POST['attendeeid'];
        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $comments = $_POST['comments'];
        $gender = $_POST['gender'];
        $omilies = $_POST['omilies'];
        $workshops = $_POST['workshops'];
        $tomasadv = $_POST['tomasadv'];
        $tomasbeg = $_POST['tomasbeg'];
        
        $sql = "select a.attendeeid , a. name , a.surname, a.comments, a.gender from attendee a where a.attendeeid = {$attendeeid} ";
        $result_set = $database -> query($sql);
         if($database ->num_rows($result_set) == 0){
                $sql=" INSERT INTO attendee  (attendeeid, name, surname, comments, gender) VALUES ({$attendeeid},'{$name}','{$surname}','{$comments}', '{$gender}' ) ";
                if($omilies ==1) {
                    $sqlomilies = " INSERT INTO ACCESS (attendeeid, category ) values ({$attendeeid},'omilies')";
                    $database -> query($sqlomilies);
                }
                if($workshops ==1) {
                    $sqlworkshops =  " INSERT INTO ACCESS (attendeeid, category ) values ({$attendeeid},'WORKSHOPS') ";
                    $database -> query($sqlworkshops);
                }
                 if($tomasadv ==1) {
                    $sqltomasadv = " INSERT INTO ACCESS (attendeeid, category ) values ({$attendeeid},'TOMAS CLARK ADVANCED')";
                    $database -> query($sqltomasadv);
                }
                 if($tomasbeg ==1) {
                    $sqltomasbeg = " INSERT INTO ACCESS (attendeeid, category ) values ({$attendeeid},'TOMAS CLARK BEGINNERS') ";
                    $database -> query($sqltomasbeg);
                }
                

 }
 else 
 {         $sql = " UPDATE attendee SET name = '{$name}' ,  surname = '{$surname}', comments = '{$comments}' , gender = '{$gender}'   WHERE attendeeid = {$attendeeid} ";
             if($omilies ==0) {
                $sqlomilies = " DELETE FROM  ACCESS WHERE ATTENDEEID = {$attendeeid} AND CATEGORY = 'omilies' ";
                $database -> query($sqlomilies);
             }else if($omilies ==1) {
                $sqlomilies =  " INSERT INTO ACCESS  (ATTENDEEID,CATEGORY) VALUES ({$attendeeid}, 'omilies') ON DUPLICATE KEY UPDATE  ATTENDEEID = VALUES(ATTENDEEID), CATEGORY = VALUES(CATEGORY) ";
                 //echo($sqlomilies);
                $database -> query($sqlomilies);
              }
              if($workshops ==0) {
                $sqlworkshops = " DELETE FROM  ACCESS WHERE ATTENDEEID = {$attendeeid} AND CATEGORY = 'WORKSHOPS' ";
                $database -> query($sqlworkshops);
             }else if($workshops ==1) {
                $sqlworkshops = "INSERT INTO ACCESS  (ATTENDEEID,CATEGORY) VALUES ({$attendeeid}, 'WORKSHOPS') ON DUPLICATE KEY UPDATE  ATTENDEEID = VALUES(ATTENDEEID), CATEGORY = VALUES(CATEGORY) ";
                 $database -> query($sqlworkshops);
             }
              if($tomasadv ==0) {
                $sqltomasadv = " DELETE FROM  ACCESS WHERE ATTENDEEID = {$attendeeid} AND CATEGORY = 'TOMAS CLARK ADVANCED' ";
                 $database -> query($sqltomasadv);
             }else if($tomasadv ==1){
                $sqltomasadv = "INSERT INTO ACCESS  (ATTENDEEID,CATEGORY) VALUES ({$attendeeid}, 'TOMAS CLARK ADVANCED') ON DUPLICATE KEY UPDATE  ATTENDEEID = VALUES(ATTENDEEID), CATEGORY = VALUES(CATEGORY) ";
                 $database -> query($sqltomasadv);
             }
              if($tomasbeg ==0) {
                $sqltomasbeg = " DELETE FROM  ACCESS WHERE ATTENDEEID = {$attendeeid} AND CATEGORY = 'TOMAS CLARK BEGINNERS' ";
                $database -> query($sqltomasbeg);
             }else if($tomasbeg ==1){
                $sqltomasbeg = "INSERT INTO ACCESS  (ATTENDEEID,CATEGORY) VALUES ({$attendeeid}, 'TOMAS CLARK BEGINNERS') ON DUPLICATE KEY UPDATE  ATTENDEEID = VALUES(ATTENDEEID), CATEGORY = VALUES(CATEGORY) ";
                 $database -> query($sqltomasbeg);
             }
          
             
}
 
// echo($sql);
 //print_r($_POST);
 
 
//echo($sql);
//print_r($_POST);
//echo($sql);
$database -> query($sql);

    }
    

    
    
header( 'Location: index.php') ; 