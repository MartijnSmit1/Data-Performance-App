<?php
include_once 'dbconfig.php';
?>
<html>
<head>
<title>CMS Show</title>
<link rel="stylesheet" href="tablestyle.css" type="text/css" />
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="../index.html">Home</a>
  <a href="../personalcharts.html">Personal</a>
  <a href="#">Acount</a>
  <a href="cms/cms_show.php">CMS</a>
  <a href="logreg.html">Logout</a>
</div>
<table>

    <tr>
    <th colspan="5"><a href="cms_create.html">Insert data here.</a></th>
    </tr>
    <th>Personal hours.</th>
    <th>Hours logged.</th>
    <th>Story points.</th>
    <th>User id</th>
    <th>Month id</th>
    <th colspan="2">Operations</th>
    </tr>

<?php
 $sql_query="SELECT * FROM personaldata";
 $result_set=mysql_query($sql_query);
 while($row=mysql_fetch_row($result_set))
 {
  ?>
        <tr>
        <td><?php echo $row[1]; ?></td>
        <td><?php echo $row[2]; ?></td>
        <td><?php echo $row[3]; ?></td>
        <td><?php echo $row[4]; ?></td>
        <td><?php echo $row[5]; ?></td>
  		<td><a href="cms_update.php?edit_id=<?php echo $row[0]; ?>">Edit</a></td>
        <td><a href="cms_delete.php?delete_id=<?php echo $row[0]; ?>">Delete</a></td>
        </tr>
        <?php
 }
 ?>

 </table>
 </body>
 </html>
