<?php
include_once('menu.html');
include_once('db.php');

$Matricula=$_POST['Matricula'];
$Marca=$_POST['Marca'];
$Modelo=$_POST['Modelo'];
$Color=$_POST['Color'];
$Precio=$_POST['Precio'];


$conectar=conn();
$sql= "INSERT INTO Vehiculo (Matricula, Marca, Modelo, Color, Precio) 
VALUE ('$Matricula','$Marca','$Modelo','$Color','$Precio')";
$resul = mysqli_query ($conectar,$sql) or trigger_error('Query Failed! SQL - Error'.mysqli_error($conectar), E_User_Error);

include_once('ingreso_Vehiculos.php')
?>