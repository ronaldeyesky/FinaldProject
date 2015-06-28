<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Member Login</title>

    <!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="background: #269abc;">
    <div class="container">
        <p></br></p>
        <p></br></p>
    <div class="row">
     <div class="col-md-4"></div>
     <div class="col-md-4">
         <div class="panel panel-default">
           <div class="panel-body">
            <div class="page-header">
               <h3>Login Area</h3>
            </div>
               <form method="post" action="index.html">
               <div class="form-group">
                 <label for="exampleInputEmail">Usuario</label>
                   <div class="input-group">
                       <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
                       <input type="text" class="form-control" name="us" id="exampleInputEmail1" placeholder="Usuario" required="">
                  </div>
               </div>
             <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <div class="input-group">
                     <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-star"></span></span>
                     <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="Password" required="">
                </div>
              </div>
                   <hr>
               <div class="checkbox">
                   <label>
                        <input type="checkbox" value="remember-me"> Remember me
                   </label>
               </div>
               <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock"></span>Login</button>
               <p></br></p>
          </form>
           </div>
         </div>
     </div>
    </div>

    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </body>
</html>