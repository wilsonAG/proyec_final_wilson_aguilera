<?php
function conn(){
    $hostname="localhost";
    $Usuariobd="root";
    $Passwordbd="";
    $bdname="Venta_vehiculos";

    $conectar= mysqli_connect($hostname, $Usuariobd, $Passwordbd, $bdname);
    return $conectar;
}
?>
