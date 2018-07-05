<?php
session_start();

echo "<h2 style='text-aligin:center;'>Bienvenido! " . $_SESSION['usuario_cuenta']."</h2>";
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
<a href='../index.php'>Necesita Hacer Login</a>";
exit;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bienestar Social</title>

    <!-- Bootstrap Core CSS -->
    <link href="../plugins/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../plugins/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../plugins/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../plugins/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../plugins/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../plugins/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Bienestar Social</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Docentes<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="registroDocente_vista.php">Registro de Docentes</a>
                                </li>
                                <li>
                                    <a href="listaDocente_vista.php">Lista de Docentes</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Alumnos -->
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Alumnos<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="registroAlumno_vista.php">Registro de Alumnos</a>
                                </li>
                                <li>
                                    <a href="listaAlumno_vista.php">Lista de Alumnos</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Alumnos -->						
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> R. P. y Dirección<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="registroDireccion_vista.php">Registro de Personal</a>
                                </li>
                                <li>
                                    <a href="listaDireccion_vista.php">Lista de Personal</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Relaciones públicas y dirección -->                       
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Malla Curricular<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="listaMalla_vista.php">Malla</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Malla Curricular -->		
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Usuarios<span class="fa arrow"></span></a>

                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Usuarios -->
						
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.Barra Desplegable Izquierda -->
        </nav>

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
                            Malla Curricular
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
							<ul class="nav nav-pills">
                                <li class="active"><a href="#2012" data-toggle="tab">2012</a>
                                </li>
                                <li><a href="#2018" data-toggle="tab">2018</a>
                                </li>
                            </ul>
							
							<!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="2012">									
								<div class="dataTable_wrapper">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Curso</th>
                                            <th>Codigo</th>
                                            <th>Codigo Pre-requisito</th>
                                            <th>Semestre</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Fundamentos de la Programación</td>
                                            <td>2864</td>
                                            <td>2024</td>
                                            <td>V</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Comunicación Oral y Escrita</td>
                                            <td>2642</td>
                                            <td>2467</td>
                                            <td>III</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Proyecto de Software</td>
                                            <td>2783</td>
                                            <td>4246</td>
                                            <td>II</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Cálculo en I Variable</td>
                                            <td>2483</td>
                                            <td>2684</td>
                                            <td>I</td>
                                        </tr>

                                    </tbody>
                                </table>
								</div>
                            <!-- /.table-responsive -->
								</div>
                                <div class="tab-pane fade" id="2018">
                                    <div class="dataTable_wrapper">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Curso</th>
                                            <th>Codigo</th>
                                            <th>Codigo Pre-requisito</th>
                                            <th>Semestre</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Fundamentos de la Programación</td>
                                            <td>2864</td>
                                            <td>2024</td>
                                            <td>V</td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Comunicación Oral y Escrita</td>
                                            <td>2642</td>
                                            <td>2467</td>
                                            <td>III</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Proyecto de Software</td>
                                            <td>2783</td>
                                            <td>4246</td>
                                            <td>II</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Cálculo en I Variable</td>
                                            <td>2483</td>
                                            <td>2684</td>
                                            <td>I</td>
                                        </tr>

                                    </tbody>
                                </table>
								</div>
								</div>
                                
                            </div>
                        
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../plugins/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../plugins/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../plugins/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    <script src="../plugins/bower_components/datatables-responsive/js/dataTables.responsive.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="../plugins/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
