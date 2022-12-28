<%-- 
    Document   : nuevo
    Created on : 12/12/2022, 23:43:20
    Author     : Marcelo Tejoubel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro nuevo socio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <script src="js/bootstrap-datetimepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>
        
        <div class="container" >
            <h1 class="text-center"><b>Formulario de ingreso para nuevos socios</b></h1>
                <div class="row" >
                    <form class="p-4 row mx-auto" method="POST" action="SociosController?accion=insert">
                        <div class="col-3">
                            <label for="nombre" class="form-label"><b>Nombre</b></label>
                            <input type="text" class="form-control" id="nombre" name="nombre">                          
                        </div> 
                        <div class="col-3">
                            <label for="apellido" class="form-label"><b>Apellido</b></label>
                            <input type="text" class="form-control" id="apellido" name="apellido">                          
                        </div> 
                         <div class="col-3">
                            <label for="direccion" class="form-label"><b>Direccion</b></label>
                            <input type="text" class="form-control" id="direccion" name="direccion">                          
                        </div> 
                         <div class="col-3">
                            <label for="localidad" class="form-label"><b>Localidad</b></label>
                            <input type="text" class="form-control" id="localidad" name="localidad">                          
                        </div> 
                          <div class="col-3">
                            <label for="fnac" class="form-label"><b>Fecha de nacimiento</b></label>
                            <input type="date" class="form-control" id="fnac" name="fnac">                          
                        </div> 
                        <div class="col-md-3">
                            <label for="mail" class="form-label"><b>Correo electrónico</b></label>
                            <input type="text" class="form-control" id="mail" name="mail">                          
                        </div>  
                        <div class="col-3">
                            <label for="telefono" class="form-label"><b>Telefono</b></label>
                            <input type="text" class="form-control" id="telefono" name="telefono">                          
                        </div>                
                        <br>                       
                        <button type="submit" class="btn btn-primary d-grid gap-2 col-6 mx-auto" id="agregar">Registrar nuevo usuario</button>
                        
                    </form>
                    <a class="btn btn-primary col-6 m-4 mx-auto" href="SociosController">Visualizar listado de socios</a>
                </div>
        </div>
    </body>
</html>

