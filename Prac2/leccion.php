<?php

include_once "ConexionDB.php";
class Leccion
{

    private $comentario_profesor;
    private $comentario_estudiante;
    private $id_prog;
    private $id_estud;

    public function mostrarLecciones(){
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM leccion";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $result = $respuesta->fetchAll();

            $db->cerrarConexion();
            return $result;
        }
        catch (PDOException $e){
            echo $e->getMessage();
        }
    }

  
}