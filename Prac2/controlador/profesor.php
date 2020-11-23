<?php
include '../db/autoload.php';

class Controladorprofesor {

    public function mostrarCategoria() {

        $categoria = new profesor();
        
        return $categoria->MostrarCategoria();
    }
    
}