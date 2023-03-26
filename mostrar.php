<?php 
include_once('menu.html');
include_once('db.php');
include_once('Ingreso_cliente.php');
?>
<!DOCTYPE html>
<html>
<head>
    <title>mostrar datos</title>
    <style type="text/css">
        table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td{
            padding: 10px;
           
        }
        tr:hover{
            background-color:#a7cdf3;
            color:rgb(2, 2, 2);
        }
        th{
            background-color: #a7cdf3;
            color: rgb(2,2,2);
        }
    </style>
        
</head>
<body>

<br>
<div class="container-sm">
    <div class="datos">
        <table  style="width: 100%"   border="1" >
            <tr>
                <th>id </th>
                <th>Nombre </th>
                <th>Apellido </th>
                <th>RUT </th>
                <th>Dirección </th>
                <th>Telefono </th>
            </tr>

            <?php 
                $conectar=conn();
                $sql="SELECT * from clientes";
                $result=mysqli_query($conectar=conn(),$sql);

                while($mostrar=mysqli_fetch_array($result)){
                ?>

                <tr>
                    <td><?php echo $mostrar['Id_Cliente'] ?></td>
                    <td><?php echo $mostrar['Nombre'] ?></td>
                    <td><?php echo $mostrar['Apellido'] ?></td>
                    <td><?php echo $mostrar['RUT'] ?></td>
                    <td><?php echo $mostrar['Direccion'] ?></td>
                    <td><?php echo $mostrar['Telefono'] ?></td>
                </tr>
            <?php 
        }
        ?>
        </table>
    </div>
</div>
</body>
</html>
