<?php
include_once 'dbconfig.php';
if(isset($_GET['delete_id']))
{
 $sql_query="DELETE FROM personaldata WHERE id=".$_GET['delete_id'];
 mysql_query($sql_query);
 header("Location: cms_show.php");
}


?>

