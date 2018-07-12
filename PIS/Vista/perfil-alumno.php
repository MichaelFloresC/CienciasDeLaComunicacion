<?php include("restriccion.php"); ?>
<!DOCTYPE html>
<html>
<?php include("head.php"); ?>
<body>
<?php
if($_SESSION['rol']==2){
?>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="bienvenida.php">Bienestar Social</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <?php
							echo "<i>" . $_SESSION['usuario_cuenta']."</i>";
						?>
						<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="perfil-alumno.php"><i class="fa fa-user fa-fw"></i> Perfil</a>
                        </li>
                        <li><a href="cambio-contrasena.php"><i class="fa fa-gear fa-fw"></i> Configuración</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesión</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
						<li>
                            <a href="perfil-alumno.php"><i class="fa fa-wrench fa-fw"></i> Perfil</a>
                        </li>
											
						
						<!-- /Relaciones públicas y dirección -->                       
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Malla Curricular<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="lista-malla.php">Malla</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Malla Curricular -->		
					
						
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.Barra Desplegable Izquierda -->
        </nav>
		<!-- /.Barra Alumno -->
<?php
}
else{
?>




    <div id="wrapper">
	<?php include("panel.php"); ?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
							<br>
							
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo $pvd->persona_nombres; ?> <?php echo $pvd->persona_apellido1; ?> <button type="button" class="btn btn-primary btn-xs">Generar Reporte</button></h3>
								
                            </div>
							<div class="alert alert-success">
                                Usted se encuentra en <a href="#" class="alert-link"> Tercio Superior</a>.
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class=" col-md-9 col-lg-9 ">
                                        <table class="table table-user-information">
                                            <tbody>
                                                <tr><td>CUI:</td>
                                                    <td><?php echo $pvd->persona_cui; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Dirección</td>
                                                    <td><?php echo $pvd->persona_direccion; ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Correo</td>
                                                    <td><a href="mailto:info@support.com"><?php echo $pvd->persona_email; ?></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Telefono</td>
                                                    <td><?php echo $pvd->persona_telefono; ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
							<div >
							<canvas id="chart1" width="400" height="100"></canvas>
							</div>
							<div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Comentarios de los docentes
                        </div>
                        <!-- .panel-heading -->
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <?php foreach($this->model->Listare($pvd->persona_id) as $r): ?>
								<div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><?php echo $r->persona_nombres; ?></a>
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><?php echo $r->comentarios_docente_fecha; ?></a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                           <?php echo $r->comentarios_docente_comentario; ?> 
										</div>
                                    </div>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <!-- .panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
							
                </div>
            </div>
            <!-- /.row -->
            
           
        <!-- /#page-wrapper -->
            
        </div>
        <!-- /#page-wrapper -->

    </div>


<?php
}
?>
    <!-- /#wrapper -->
	<?php include("scripts.php"); ?>
</body>

</html>
