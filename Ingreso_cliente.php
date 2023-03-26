<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    <title>Document</title>
</head>
<body>
<?php
include_once('menu.html');
?>
     
    <div class="container">
   
        <h1>
            Ingreso de clientes
        </h1>
        <form name="form" action="registroClien.php" method="post">
            <div class="row">
                <div class="form-group row">
                    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Nombre</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control form-control-sm" name="Nombre" placeholder="Ingrese su Nombre" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Apellido</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control form-control-sm" name="Apellido" placeholder="Ingrese su Apellido" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">RUT</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control form-control-sm" name="RUT" placeholder="Ingrese su RUT" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Dirección</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control form-control-sm" name="Direccion" placeholder="Ingrese su Dirección" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Teléfono</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control form-control-sm" name="Telefono" placeholder="Ingrese su Telefono" required>
                    </div>
                </div>
                <div>
                <br>
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <button type="reset" href="Ingreso_cliente.php" class="btn btn-danger">Borrar</button>
                <a class="btn btn-outline-success" href="mostrar.php" role="button">Mostrar Clientes</a>
                </div>
            </div>  
        </form>
       
    </div>
</body>
</html>