<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
       <body>
        <div style="width: 60vw; margin: auto;">
            <div style="text-align: center; padding: 1rem 3rem;border: 2px solid black;margin: auto;">
                
                <p><strong>SEGUNDO PARCIAL TEM-742</strong></p>
                <p><strong>Nombre: </strong> Joaquin Coariti Aliaga</p>   
                <p><strong>Ci: </strong> 13443741 Lp</p>
            </div>
            <h1 style="text-align: center;">Registro Día del Internet</h1>
            <p><a href="Inicio?action=add" class="nuevo">Nuevo</a></p>

            <table border="1" class="tablac">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha</th>
                    <th colspan="2">Metodos</th>
                </tr>
                <c:forEach var="estudiante" items="${estudiantes}">
                    <tr>
                        <td>${estudiante.id}</td>
                        <td>${estudiante.nombres}</td>
                        <td>${estudiante.apellidos}</td>
                        <td>${estudiante.seminario}</td>
                        <td><input type="checkbox" readonly <c:if var="if" test="${estudiante.confirmado==1}">checked</c:if> ></td>

                            <td>${estudiante.fecha}</td>
                        <td><a href="Inicio?action=edit&id=${estudiante.id}">Editar</a></td>
                        <td><a href="Inicio?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
