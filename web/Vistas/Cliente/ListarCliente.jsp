<%-- 
    Document   : ListarCliente
    Created on : 29/06/2015, 01:17:26 PM
    Author     : SAMUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Theme Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="page-header" align="left">
            <h1>Lista de Clientes</h1>
        </div>
            <div class="box-body table-responsive no-padding">  
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Dni</th>
                    <th>Direccion</th>
                    <%--<th>Cumpleaños</th>--%>    
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th></th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a href="" class="btn btn-primary btn-sm">Editar</a>
                        <a href="" class="btn btn-primary btn-sm">Eliminar</a>
                    </td>
                </tr>                
            </table>
        </div>   
    </body>
</html>
