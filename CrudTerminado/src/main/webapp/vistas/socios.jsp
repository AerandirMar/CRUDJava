<%-- 
    Document   : socios
    Created on : 08/12/2022, 09:51:15
    Author     : Marcelo Tejoubel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Listado de socios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" type="text/css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,300,0,0">
        <link rel="preconnect" href="https://fonts.googleapis.com" type="text/css">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>
        <h1>Listado de socios</h1>
        <div class="container">
            <div class= "row table-responsive">   
                <a class="btn btn-primary col-6 m-4 mx-auto" href="SociosController?accion=nuevo">Agregar Socio</a>
                <table class="table table-primary">
                    <thead style="text-align: center">
                            <th>Socio Nro</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Direccion</th>
                            <th>Localidad</th>
                            <th>Fecha de nacimiento</th>
                            <th>Telefono</th>
                            <th>Correo electrónico</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                    </thead>
                    
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>                
                    
                    <tr style="text-align: center">
                        <td><%=resultado.get(i).getIdSocio()%></td>
                        <td><%=resultado.get(i).getNombre()%></td>
                        <td><%=resultado.get(i).getApellido()%></td>
                        <td><%=resultado.get(i).getDireccion()%></td>
                        <td><%=resultado.get(i).getLocalidad()%></td>
                        <td><%=resultado.get(i).getFnac()%></td>
                        <td><%=resultado.get(i).getTelefono()%></td>
                        <td><%=resultado.get(i).getMail()%></td>
                        <td class="text-center"><a href=<%=ruta%>> <i class="material-symbols-outlined">auto_fix</i></a></td>
			<td class="text-center"><a href=<%=rutaE%>><i class="material-symbols-outlined">delete</i></a></td>
                    </tr>
                    <%
                        }
                    %>
                   
                </table>
            </div>
        </div>
    </body>
</html>

