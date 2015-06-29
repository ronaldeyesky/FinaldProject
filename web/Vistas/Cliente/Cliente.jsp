<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Justified Nav Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../CSS/justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      <nav class="navbar navbar-fixed-top">
    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
        <nav>
          <ul class="nav nav-justified">
              <li><a href="../../ModuloVentas/Inicio.jsp">Inicio</a></li>
              <li><a href="../../Vistas/Producto/Producto.jsp">Producto</a></li>
            <li class="active"><a href="#">Cliente</a></li>
            <li><a href="#">Ventas</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </nav>
      </div>
    </nav>
      <div class="box box-primary">

            <div class="container">
                <br>
                <div class="page-header" align="left">
                    <h1>Mantenimiento Cliente</h1>
                </div>
                 <form action="../../integrantes" id="checkout-form" class="form-horizontal">
                 <center>
                     <div class="form-group">
                        <label class="control-label col-xs-3">Nombres:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="nombre" onkeypress="return soloLetras(event)" placeholder="Nombres" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Paterno</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_paterno" onkeypress="return soloLetras(event)" placeholder="Apellido Paterno" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Materno:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_materno" placeholder="Apellido Materno" onkeypress="return soloLetras(event)" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Codigo Estudiante:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="co_estudiante" onkeypress="return Num9(event, this)" onkeyUp="return ValNumero(this);" placeholder="Codigo Estudiante" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Camiseta:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="nu_camiseta" onkeypress="return Num3(event, this)" onkeyUp="return ValNumero(this);" placeholder="N° Camiseta" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° DNI:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="dni" onkeypress="return Num(event, this)" onkeyUp="return ValNumero(this);" placeholder="N° DNI" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Celular:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="cell" onkeypress="return Num9(event, this)" onkeyUp="return ValNumero(this);" placeholder="N° Celular" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Email:</label>
                        <div class="col-xs-9">
                            <input type="email" class="form-control" name="email" placeholder="Email" required="">
                        </div>
                    </div>
                    <input type="hidden" name="opc"  class="submit" value="Registrar_Integrantes">
                    <div class="form-group">
                        <footer>
                            <div class="col-xs-offset-3 col-xs-9" align="center">
                                <button type="submit" class="btn btn-primary">Registrar</button>
                                <input type="reset" class="btn btn-default" value="Limpiar">
                            </div>
                        </footer>
                    </div>
                    <%@include  file="ListarCliente.jsp" %>
                 </center>
                 </form>                
            </div>
        </div>
  </body>
</html>