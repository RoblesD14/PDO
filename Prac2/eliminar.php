<?php
include_once "Programacion.php";

$programacion_id = $_GET["id"];

$programacion = new Programacion();

$filasAfectadas = $programacion->eliminarProgramacion($programacion_id);

if($filasAfectadas==0){
    
    echo "Error";
}else{
    header("location: consultaProfesor.php");
}