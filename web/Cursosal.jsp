<%-- 
    Document   : Cursos
    Created on : 10/04/2020, 10:12:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <div class="form-group text-center" class="container col-lg-3"><h1 style="color: blue" class="container col-lg-3">Cursos y tarea del Alumno</h1>
        <select class="custom-select " text>
            <option selected>Seleccione el curso <a> ${usuario.getNombres()} </a> </option>
  <option value="1">Matematica </option>
  <option value="2">Comunicacion</option>
  <option value="3">CTA</option>
        </select></div>
        
    </body>
</html>
