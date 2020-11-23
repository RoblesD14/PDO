<?php

include_once "ConexionDB.php";
class Estudiante
{
    private $nombre;
    private $email;

    public function mostrarEstudiantes(){
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM estudiante";
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