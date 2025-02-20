<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
            <h1>
                <c:if test="${estudiante.id == 0}">Nuevo</c:if>
                <c:if test="${estudiante.id != 0}">Editar</c:if>
                    Estudiante
                </h1>
                <form action="Inicio" method="post">
                    <input type="hidden" name="id" value="${estudiante.id}" />
                <table>
                    <tr>
                        <td>Nombres:</td>
                        <td><input type="text" name="nombres" 
                                   value="${estudiante.nombres}" required /></td>
                    </tr>
                    <tr>
                        <td>Apellidos:</td>
                        <td><input type="text" name="apellidos" 
                                   value="${estudiante.apellidos}" required /></td>
                    </tr>
                    <tr>
                        <td>Seminario:</td>
                        <td><input type="text" name="seminario" 
                                   value="${estudiante.seminario}" required /></td>
                    </tr>
                    <tr>
                        <td>Confirmado:</td>
                        <td><input type="checkbox" name="confirmado" 
                                   value="1" <c:if test="${estudiante.confirmado == 1}">checked</c:if> /></td>
                        </tr>
                        <tr>
                            <td>Fecha:</td>
                            <td><input type="date" name="fecha" 
                                       value="${estudiante.fecha}" required /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit" class="nuevo">Enviar</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
