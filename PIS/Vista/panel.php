<?php
if($_SESSION['rol']==1){
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
                <a class="navbar-brand" href="bienvenida.php.">Bienestar Social</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <?php
							echo "<i>" . $_SESSION['nombre_persona']."</i>";
						?>
						<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../Vista/Accion.php?c=contrasena&a=CambiarContrasena&persona_id=<?php echo $_SESSION['usuario_id']; ?>"><i class="fa fa-gear fa-fw"></i> Cambiar Contraseña</a>
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
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Docentes<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="profesorVista.php?c=profesor&a=Nuevo">Registro de Docentes</a>
                                </li>
                                <li>
                                    <a href="profesorVista.php">Lista de Docentes</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Alumnos -->
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Alumnos<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="alumnoVista.php?c=alumno&a=Nuevo">Registro de Alumnos</a>
                                </li>
                                <li>
                                    <a href="alumnoVista.php">Lista de Alumnos</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Alumnos -->						
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> R. P. y Dirección<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="administradorVista.php?c=administrador&a=Nuevo">Registro de Personal</a>
                                </li>
                                <li>
                                    <a href="administradorVista.php">Lista de Personal</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Relaciones públicas y dirección -->                       
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Malla Curricular<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Accion.php?c=malla&a=Listar">Lista</a>
                                </li>
								<li>
                                    <a href="Accion.php?c=malla&a=Nuevo">Subir Nuevo</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Notas<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="notasVista.php?c=notas&a=Nuevo">Agregar Notas</a>
                                </li>
<<<<<<< HEAD
                                 <li>
                                    <a href="notasVista.php?c=notas&a=estadistico">Datos Estadisticos</a>
                                </li>
=======
>>>>>>> 7de0671722bb6285450a92891a6b19ff502052c3
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- /Usuarios -->
						
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.Barra Desplegable Izquierda -->
        </nav>
		<!-- /.Barra Direccion -->

<?php
}
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
							echo "<i>" . $_SESSION['nombre_persona']."</i>";
						?>
						<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../Vista/alumnoVista.php?c=alumno&a=Perfil&persona_id=<?php echo $_SESSION['persona_id']; ?>"><i class="fa fa-user fa-fw"></i> Perfil</a>
                        </li>
                        <li><a href="../Vista/Accion.php?c=contrasena&a=CambiarContrasena&persona_id=<?php echo $_SESSION['usuario_id']; ?>"><i class="fa fa-gear fa-fw"></i> Cambiar Contraseña</a>
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
                            <a href="../Vista/alumnoVista.php?c=alumno&a=Perfil&persona_id=<?php echo $_SESSION['persona_id']; ?>"><i class="fa fa-wrench fa-fw"></i> Perfil</a>
                        </li>
											
						
						<!-- /Relaciones públicas y dirección -->                       
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Malla Curricular<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Accion.php?c=malla&a=Listar">Lista</a>
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
if($_SESSION['rol']==3){
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
							echo "<i>" . $_SESSION['nombre_persona']."</i>";
						?>
						<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../Vista/Accion.php?c=contrasena&a=CambiarContrasena&persona_id=<?php echo $_SESSION['usuario_id']; ?>"><i class="fa fa-gear fa-fw"></i> Cambiar Contraseña</a>
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
						<!-- /Alumnos -->
						<li>
                            <a href="alumnoVista.php"><i class="fa fa-wrench fa-fw"></i> Alumnos</a>
                        </li>
						
						<!-- /Relaciones públicas y dirección -->                       
						<li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Malla Curricular<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Accion.php?c=malla&a=Listar">Lista</a>
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
		<!-- /.Barra Profesor -->

<?php
}
?>
