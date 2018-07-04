<?php
	if(isset($_POST['submit'])) 
	{ 
		$username = $_POST['username'];
		$password = $_POST['password'];
	}
?>

<!DOCTYPE html>

<html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>Ciencias de la Comunicacion</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="plugins/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <link href="plugins/dist/css/skins/skin-blue-light.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <script src="plugins/jquery/jquery-2.1.4.min.js"></script>
	<script src="plugins/morris/raphael-min.js"></script>
	<script src="plugins/morris/morris.js"></script>
  	<link rel="stylesheet" href="plugins/morris/morris.css">
  	<link rel="stylesheet" href="plugins/morris/example.css">
    <script src="plugins/jspdf/jspdf.min.js"></script>
    <script src="plugins/jspdf/jspdf.plugin.autotable.js"></script>
	<script type="text/javascript" src="plugins/jsqrcode/llqrcode.js"></script>
	<script type="text/javascript" src="plugins/jsqrcode/webqr.js"></script>
 	<meta charset = "utf-8">
</head>


<body style="background-color:#dfdfdf;">
<div class="login-box">
      <div class="login-logo">
        <a href="./">BIENESTAR<b>SOCIAL</b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
	<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
		<div class="form-group has-feedback">
			<input name="username" type="text" id="username" required class="form-control" placeholder="Usuario"/>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
	    </div>
	  <div class="form-group has-feedback">
		<input name="password" type="password" id="password" required class="form-control" placeholder="Password"/>
	<span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
	
	 <div class="row">
     <div class="col-xs-12">
	<input type="submit" name="submit" value="LOGIN" class="btn btn-primary btn-block btn-flat">

	</div><!-- /.col -->
    </div>
	<?php
		include("Controlador/validarLogin_controlador.php");
	?>
	</form>
 </div>
</div>



 </body>
</html>


 