<?php
class profesor
{
	private $pdo;

    public $persona_id;
    public $persona_nombres;
    public $persona_apellido1;
    public $persona_apellido2;
	public $persona_tipo_id;
	public $persona_dni;
	public $persona_direccion;
	public $persona_email;
	public $persona_telefono;
	public $persona_estado;
	
	public function __CONSTRUCT()
	{
		try
		{
			$this->pdo = Conectar::conexion();
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Listar()
	{
		try
		{
			$result = array();
			$stm = $this->pdo->prepare("SELECT * FROM persona WHERE (persona_tipo_id = 2) AND (persona_estado = 0)");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Obtener($persona_id)
	{
		try
		{
			$stm = $this->pdo->prepare("SELECT * FROM persona WHERE persona_id = ?");
			$stm->execute(array($persona_id));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($persona_id)
	{
		try
		{
			$stm = $this->pdo
			            ->prepare("UPDATE persona SET persona_estado = 1 WHERE persona_id = ?");

			$stm->execute(array($persona_id));
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
		try
		{
			$sql = "UPDATE persona SET
						persona_nombres          = ?,
						persona_apellido1        = ?,
						persona_apellido2        = ?,
						persona_tipo_id			 = ?,
						persona_dni				 = ?,
						persona_direccion		 = ?,
						persona_email			 = ?,
						persona_telefono		 = ?
						
				    WHERE persona_id = ?";
			$this->pdo->prepare($sql)
			     ->execute(
				    array(
                        $data->persona_nombres,
                        $data->persona_apellido1,
                        $data->persona_apellido2,
                        $data->persona_tipo_id,
						$data->persona_dni,
                        $data->persona_direccion,
                        $data->persona_email,
                        $data->persona_telefono,
						$data->persona_id

					)
				);
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Registrar(profesor $data)
	{
		try
		{
			$sql = "INSERT INTO persona (persona_nombres,persona_apellido1,persona_apellido2,persona_tipo_id,persona_dni,persona_direccion,persona_email,persona_telefono, persona_estado)
		        VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";

			$this->pdo->prepare($sql)
		     ->execute(
				array(
						$data->persona_nombres,
                        $data->persona_apellido1,
                        $data->persona_apellido2,
                        $data->persona_tipo_id,
						$data->persona_dni,
                        $data->persona_direccion,
                        $data->persona_email,
                        $data->persona_telefono,
                        $data->persona_estado
                )
			);
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}
}
