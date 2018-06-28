<?php
session_start();

echo "<h1 style='text-aligin:center;'>Bienvenido! " . $_SESSION['username']."</h1>";
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {

} else {
   echo "Esta pagina es solo para usuarios registrados.<br>";
   echo "<br><a href='../index.php'>Login</a>";
	exit;
}

$now = time();

if($now > $_SESSION['expire']) {
session_destroy();

echo "Su sesion a terminado,
<a href='login.php'>Necesita Hacer Login</a>";
exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Bienestar Social</title>
</head>

<body>
<h1>Bienestar Social</h1>
<p>Aqui va tods los modulos relacionados a Bienestar Social</p>

<ul>
  <li>Alumnos</li>
  <li>Docentes</li>
  <li>Administrador</li>
  <li>etc.</li>
</ul>

<br><br>
<a href=logout.php>Cerrar Sesion X </a>
</body>
</html>