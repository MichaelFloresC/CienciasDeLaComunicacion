<?php
session_start();
?>

<?php

$host_db = "localhost";
$user_db = "root";
$pass_db = "";
$db_name = "curso_mvc";
$tbl_name = "usuarios";

$conexion = new mysqli($host_db, $user_db, $pass_db, $db_name);

if ($conexion->connect_error) {
 die("La conexion falló: " . $conexion->connect_error);
}

if(isset($_POST['submit'])) 
{ 
 
	$sql = "SELECT * FROM $tbl_name WHERE username = '$username'";

	$result = $conexion->query($sql);
		

	if ($result->num_rows > 0) {     
	 }
	 $row = $result->fetch_array(MYSQLI_ASSOC);
	 if (password_verify($password, $row['password'])) { 
	 
	    $_SESSION['loggedin'] = true;
	    $_SESSION['username'] = $username;
	    $_SESSION['start'] = time();
	    $_SESSION['expire'] = $_SESSION['start'] + (5 * 60);

	    header('Location: http://localhost/PIS/Vista/Home.php');
	    
	 } else { 
	   echo "Usuario o contraseña incorrectos.";
	 }
 }
 mysqli_close($conexion); 


 ?>