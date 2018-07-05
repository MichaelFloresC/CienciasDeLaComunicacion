<?php include("restriccion.php"); ?>
<!DOCTYPE html>
<html lang="en">
<?php include("head.php"); ?>
<body>

    <div id="wrapper">
	<?php include("panel.php"); ?>		
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				<div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Registro de Alumnos
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#Formulario" data-toggle="tab">Formulario</a>
                                </li>
                                <li><a href="#Archivo" data-toggle="tab">Archivo</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="Formulario">
									<form role="form">
                                        <div class="form-group col-lg-12">
                                            <label>Nombres</label>
                                            <input class="form-control" placeholder="Ingrese Nombre">
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label>Primer Apellido</label>
                                            <input class="form-control" placeholder="Ingrese Primer Apellido">
                                        </div>
										<div class="form-group col-lg-6">
                                            <label>Segundo Apellido</label>
                                            <input class="form-control" placeholder="Ingrese Segundo Apellido">
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label>CUI</label>
                                            <input class="form-control" placeholder="Ingrese CUI">
                                        </div>
										<div class="form-group col-lg-6">
                                            <label>Correo Electrónico</label>
                                            <input class="form-control" placeholder="Ingrese Correo Electrónico">
                                        </div>
										<div class="form-group col-lg-12">
                                            <label>Dirección</label>
                                            <input class="form-control" placeholder="Ingrese Dirección">
                                        </div>
										<div class="form-group col-lg-6">
                                            <label>Teléfono</label>
                                            <input class="form-control" placeholder="Ingrese Teléfono">
                                        </div>
										<br>
										<div class="col-lg-12">
											<button type="submit" class="btn btn-default ">Registrar</button>
											<button type="reset" class="btn btn-default">Reset</button>
										</div>
                                    </form>
								</div>
                                <div class="tab-pane fade" id="Archivo">
                                    <form role="form">
                                        
                                        <div class="form-group">
                                            <label>Subir Archivo</label>
                                            <input type="file">
                                        </div>
                                  
                                        <button type="submit" class="btn btn-default">Registrar</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
								</div>
                                
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.Registro -->
                
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
	<?php include("scripts.php"); ?>

</body>

</html>
