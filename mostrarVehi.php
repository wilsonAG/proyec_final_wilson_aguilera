<?php 
include_once('menu.html');
include_once('db.php');
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
<h1>Listado de Vehiculos de ToyoChile</h1>
<br>
<div class="container-sm">
    <div class="datos">
        <table  style="width: 100%"   border="1" >
            <tr>
                <th>id </th>
                <th>Matricula </th>
                <th>Marca</th>
                <th>Modelo </th>
                <th>Color </th>
                <th>Precio </th>
            </tr>

            <?php 
                $conectar=conn();
                $sql="SELECT * from Vehiculo";
                $result=mysqli_query($conectar=conn(),$sql);

                while($mostrar=mysqli_fetch_array($result)){
                ?>

                <tr>
                    <td><?php echo $mostrar['Id_Vehiculo'] ?></td>
                    <td><?php echo $mostrar['Matricula'] ?></td>
                    <td><?php echo $mostrar['Marca'] ?></td>
                    <td><?php echo $mostrar['Modelo'] ?></td>
                    <td><?php echo $mostrar['Color'] ?></td>
                    <td><?php echo $mostrar['Precio'] ?></td>
                </tr>
            <?php 
        }
        ?>
        </table>
    </div>
</div>
</body>
</html>
