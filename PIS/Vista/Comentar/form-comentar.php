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
                            Edicion de Alumnos
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="Formulario">
									<form role="form" id="frm-alumno" action="?c=comentar&a=EnviarComentario" method="post" enctype="multipart/form-data">
										<label><?php echo $pvd->persona_nombres; ?></label>
                                        <input class="form-control" type="hidden" name="persona_cui" value="<?php echo $pvd->persona_id; ?>">
                                        <input class="form-control" type="hidden" name="usuario_persona_id" value="<?php echo $_SESSION['persona_id']; ?>">
                                        
										<div class="form-group col-lg-6">
                                            <label>Comentario</label>
                                            <input class="form-control" name="comentarios_docente_comentario" placeholder="Ingrese CUI">
                                        </div>
										<br>
										<div class="col-lg-12">
											<button type="submit" class="btn btn-default ">Actualizar</button>
											<button type="reset" class="btn btn-default">Reset</button>
										</div>
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
