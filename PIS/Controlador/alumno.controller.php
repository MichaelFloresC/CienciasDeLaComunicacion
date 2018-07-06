<?php
//Se incluye el modelo donde conectará el controlador.
require_once '../Modelo/alumno.php';

class AlumnoController{

    private $model;

    //Creación del modelo
    public function __CONSTRUCT(){
        $this->model = new alumno();
    }

    //Llamado plantilla principal
    public function Index(){
        require_once '../Vista/lista-alumnos.php';

    }

    //Llamado a la vista alumno-editar
    public function Crud(){
        $pvd = new alumno();

        //Se obtienen los datos del alumno a editar.
        if(isset($_REQUEST['persona_id'])){
            $pvd = $this->model->Obtener($_REQUEST['persona_id']);
        }

        //Llamado de las vistas.
        require_once '../Vista/editar-alumnos.php';
	}
	
	//Llamado a la vista alumno-perfil
    public function Perfil(){
        $pvd = new alumno();

        //Se obtienen los datos del alumno.
        if(isset($_REQUEST['persona_id'])){
            $pvd = $this->model->Obtener($_REQUEST['persona_id']);
        }

        //Llamado de las vistas.
        require_once '../Vista/perfil-alumno.php';
	}

    //Llamado a la vista alumno-nuevo
    public function Nuevo(){
        $pvd = new alumno();

        //Llamado de las vistas.
        require_once '../Vista/agregar-alumnos.php';

    }

    //Método que registrar al modelo un nuevo proveedor.
    public function Guardar(){
        $pvd = new alumno();

        //Captura de los datos del formulario (vista).
        $pvd->persona_id = $_REQUEST['persona_id'];
        $pvd->persona_nombres = $_REQUEST['persona_nombres'];
        $pvd->persona_apellido1 = $_REQUEST['persona_apellido1'];
        $pvd->persona_apellido2 = $_REQUEST['persona_apellido2'];
		$pvd->persona_tipo_id = $_REQUEST['persona_tipo_id'];
        $pvd->persona_cui = $_REQUEST['persona_cui'];
        $pvd->persona_direccion = $_REQUEST['persona_direccion'];
        $pvd->persona_email = $_REQUEST['persona_email'];
        $pvd->persona_telefono = $_REQUEST['persona_telefono'];
        $pvd->persona_estado = $_REQUEST['persona_estado'];

        //Registro al modelo alumno.
        $this->model->Registrar($pvd);

        //header() es usado para enviar encabezados HTTP sin formato.
        //"Location:" No solamente envía el encabezado al navegador, sino que
        //también devuelve el código de status (302) REDIRECT al
        //navegador
        header('Location: ../Vista/alumnoVista.php');
    }

    //Método que modifica el modelo de un proveedor.
    public function Editar(){
        $pvd = new alumno();

        $pvd->persona_id = $_REQUEST['persona_id'];
        $pvd->persona_nombres = $_REQUEST['persona_nombres'];
        $pvd->persona_apellido1 = $_REQUEST['persona_apellido1'];
        $pvd->persona_apellido2 = $_REQUEST['persona_apellido2'];
		$pvd->persona_tipo_id = $_REQUEST['persona_tipo_id'];
        $pvd->persona_cui = $_REQUEST['persona_cui'];
        $pvd->persona_direccion = $_REQUEST['persona_direccion'];
        $pvd->persona_email = $_REQUEST['persona_email'];
        $pvd->persona_telefono = $_REQUEST['persona_telefono'];

        $this->model->Actualizar($pvd);

        header('Location: ../Vista/alumnoVista.php');
    }

    //Método que elimina la tupla proveedor con el nit dado.
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['persona_id']);
        header('Location: ../Vista/alumnoVista.php');
    }
}
