<?php
include_once('menu.html');
include_once('db.php');

$Nombre=$_POST['Nombre'];
$Apellido=$_POST['Apellido'];
$RUT=$_POST['RUT'];
$Direccion=$_POST['Direccion'];
$Telefono=$_POST['Telefono'];


$conectar=conn();
$sql= "INSERT INTO clientes (Nombre, Apellido, RUT, Direccion, Telefono) 
VALUE ('$Nombre','$Apellido','$RUT','$Direccion','$Telefono')";
$resul = mysqli_query ($conectar,$sql) or trigger_error('Query Failed! SQL - Error'.mysqli_error($conectar), E_User_Error);

include_once('ingreso_cliente.php')
?>


