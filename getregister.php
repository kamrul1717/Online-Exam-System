<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/classes/User.php');
	$usr = new User();
	
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$name 	= $_POST['name'];
		$username = $_POST['username'];
		$password = md5($_POST['password']);
		$email = $_POST['email'];
		$userreg = $usr->userRegistation($name, $username, $password, $email);
		
	}
?>