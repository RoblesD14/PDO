<?php

class ConexionBD
{
    private $dsn = "mysql:host=localhost;dbname=udh";
    private $user = "root";
    private $pass = "";
    private $opciones = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'"));
    
}