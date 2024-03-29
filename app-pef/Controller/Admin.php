<?php
namespace Hagane\Controller;

class Admin extends AbstractController{

	function _init() {
		if (!$this->auth->isAuth()) {
			$this->redirect('/User');
			die();
		}
		include_once($this->config['appPath'].'Model/UserManagement.php');
		echo $this->db->database_log['error'];
	}

	function index() {
	}

	function clientes() {
		//$this->print_template = false;
	}
	function users() {
		//$this->print_template = false;

	}

	function ajaxAcceptUsuarioResponsable() {
		$postdata = file_get_contents("php://input"); //recibe los datos de angular
		$request = json_decode($postdata);

		$this->print_template = false;
		$this->sendJson = true;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);

		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$data = array(
				'idUser' => $request->idUser,
				'respId' => $request->respId,
				'nombre' => $request->nombre,
				'apellido_paterno' => $request->apellido_paterno,
				'apellido_materno' => $request->apellido_materno
			);

			echo json_encode($this->userManager->setAcceptResp($data));
		}
	}

	function ajaxSetCliente() {
		$postdata = file_get_contents("php://input"); //recibe los datos de angular
		$request = json_decode($postdata);

		$this->print_template = false;
		$this->sendJson = true;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);

		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$data = array(
				'id' => $request->id,
				'nombre' => $request->nombre,
				'rfc' => $request->rfc,
				'calle' => $request->calle,
				'num_exterior' => $request->num_exterior,
				'num_interior' => $request->num_interior,
				'colonia' => $request->colonia,
				'telefono' => $request->telefono,
				'email' => $request->email,
				'cp' => $request->cp,
				'municipio' => $request->municipio
			);

				$this->userManager->setCliente($data);
		}
	}

	function ajaxUpdateUsuarioResponsable() {
		$postdata = file_get_contents("php://input"); //recibe los datos de angular
		$request = json_decode($postdata);

		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);

		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$data = array(
				'id' => $request->id,
				'idUser' => $request->idUser,
				'user' => $request->user,
				'activo' => $request->activo,
				'user_type' => 'Cliente',
				'nombre' => $request->nombre,
				'apellido_paterno' => $request->apellido_paterno,
				'apellido_materno' => $request->apellido_materno,
				'idCliente' => $request->idCliente);

			$this->userManager->updateResponsable($data);
		}
	}

	function ajaxSetUsuarioAdmin() {
		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);

		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$data = array(
				'nombre' => $_POST['nombre'],
				'rfc' => $_POST['rfc'],
				'calle' => $_POST['calle'],
				'num_exterior' => $_POST['num_exterior'],
				'num_interior' => $_POST['num_interior'],
				'colonia' => $_POST['colonia'],
				'cp' => $_POST['cp']);

				$this->userManager->setCliente($data);
		}
	}

	function ajaxGetCliente() {
		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);
		echo json_encode($this->userManager->getEmpresas());
	}

	function ajaxGetUsuarioResponsable() {
		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);
		echo json_encode($this->userManager->getClientUsers());
	}

	function ajaxGetUsuarioAdmin() {
		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);
		echo json_encode($this->userManager->getAdminUsers());
	}

	function ajaxGetUsuariosInactivos() {
		$this->sendJson = true;
		$this->print_template = false;
		$this->userManager = new \Hagane\Model\UserManagement($this->auth, $this->db);
		echo json_encode($this->userManager->getNotActiveClientUsers());
	}
}

?>