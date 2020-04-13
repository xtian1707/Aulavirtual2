<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body><nav class="navbar navbar-expand-lg navbar-light bg-info">
            <a style="color: white" class="navbar-brand">Aula Virtual</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse"
   data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul  class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a style="border: none" class="btn btn-outline-light" href="Controlador?accion=saludoal"  target="hola" >Inicio</a>
      </li>
      <li class="nav-item">
          <a style="border: none" class="btn btn-outline-light" href="Controlador?accion=Cursosal" target="hola" >Cursos / Tarea</a>
      </li>
      <li class="nav-item">
        <a  style="border: none" class="btn btn-outline-light" href="Controlador?accion=Notasal" target="hola">Notas</a>
      </li>
            <li class="nav-item">
                <a  style="border: none" class="btn btn-outline-light" href="Controlador?accion=Horarioal" target="hola" >Mi horario</a>
      </li>
                   
    </ul>
  </div>
  </div>
</nav>
        
        <nav class="navbar navbar-dark bg-dark">
            <a style="color:white"class="navbar-toggler"><span class="navbar-toggler-icon"></span><img src="img/nino.gif" alt="20" width="20"/></a>
            
            <div class="dropdown">
                <div id="datetime"></div>
                <a style="color:white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                  ${usuario.getNombres()}</a>
                <div class="dropdown-menu text-center">
                    <a><img src="img/img.jpg" height="80" width="80"</a><br>
                    <a> ${usuario.getUsuario()}</a>
                    <a>Ejemplo@gmail.com</a>
                    <div class="dropdown-divider"></div>
                    <a href="index.jsp"class="dropdown-item">Salir</a>
                    </div>
            </div>  
            
        </nav>
        
                    <div class="m-4" style="height: 500px;"> 
                        <iframe name='hola' style="height: 100%; width: 100%" src="saludo.jsp" >
                              </iframe>
               
        </div>
                    <div margin-left>&nbsp&nbsp&nbsp&nbsp<a href="https://facebook.com/xtiann1707"><img src="img/fb.png" height="20" width="20"/> Siguenos en Facebook</a><br>
            &nbsp&nbsp&nbsp&nbsp<a href="https://wa.me/51989440512"><img src="img/what.png" height="20" width="20"/> Nuestro Whatsapp </a>
                    </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
