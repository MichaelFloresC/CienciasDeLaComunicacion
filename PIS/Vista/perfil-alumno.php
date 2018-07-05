<?php include("restriccion.php"); ?>
<!DOCTYPE html>
<html>
<?php include("head.php"); ?>
<body>

    <div id="wrapper">
	<?php include("panel.php"); ?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
							<br>
							
                            <div class="panel-heading">
                                <h3 class="panel-title">Luis Jimenez <button type="button" class="btn btn-primary btn-xs">Generar Reporte</button></h3>
								
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
                                                    <td>20123677</td>
                                                </tr>
                                                <tr>
                                                    <td>Dirección</td>
                                                    <td>Cerro Colorado, Jr Piura 301</td>
                                                </tr>
                                                <tr>
                                                    <td>Correo</td>
                                                    <td><a href="mailto:info@support.com">ljimenezgo@unsa.edu.pe</a></td>
                                                </tr>
                                                <tr>
                                                    <td>Telefono</td>
                                                    <td>992729679</td>
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
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Alfredo Paz</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                           Utiliza Linux y olvidate de Windows. Tienes posibilidades de ser un hacker. 
										</div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Marco Aedo</a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Freddy Gonzales</a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
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
    <!-- /#wrapper -->
	<?php include("scripts.php"); ?>
</body>

</html>
