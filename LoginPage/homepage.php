<?php
	session_start();
	require_once('dbconfig/config.php');
	//phpinfo();
	session_destroy();
?>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div id="main-wrapper">
		<center><h2>Home Page</h2></center>
		
		
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
		</form>
	</div>
</body>
</html>