<?php
include_once 'dbconfig.php';
if(isset($_POST['submit']))
{

 // variables for input data
 $personal_hours = $_POST['personal_hours'];
 $hours_logged = $_POST['hours_logged'];
 $story_points = $_POST['story_points'];
 $user_id = $_POST['user'];
 $month_id = $_POST['month'];
 // variables for input data
 
 // sql query for inserting data into database
 
        $sql_query = "INSERT INTO personaldata(personalHours,hoursLogged,storyPoints,User_id,month_id) VALUES('$personal_hours','$hours_logged','$story_points' ,'$user_id' ,'$month_id')";
 		mysql_query($sql_query);
        
        // sql query for inserting data into database
 
}
?>