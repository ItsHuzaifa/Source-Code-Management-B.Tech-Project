<?php 
include "db_connect.php";

if(isset($_GET['id']))
{
	$id = $_GET['id'];
	
	$sql="SELECT * FROM project_list WHERE id=$id";
	
	$result = mysqli_query($conn,$sql);
	
	$file = mysqli_fetch_assoc($result);
	
	
//$stat = $db->prepare("select * from project_list where id=?");
//$stat->bindParam(1, $id);
//$stat->execute();
//$data = $stat->fetch();

$file = 'assets/uploads/' .$file['avatar'];	

if(file_exists($file)){
	header('Content-Description: '. $file['description']);
	header('Content-Type: '. $file['type']);
	header('Content-Disposition: '.$file['disposition'].'; avatar="'.basename($file).'"');
	header('Expires: '.$file['expires']);
	header('Cache-Control: '. file['cache']);
	header('Pragma: '.$file['pragma']);
	header('Content-Length: '.filesize($file));
	readfile($file);
	exit;
}
}
?>





