<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Eventos</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .container {
                max-width: 800px;
                margin-top: 50px;
            }
            .header-table {
                background-color: #E9967A;
                border-color: #E9967A;
                color: white;
            }
            .btn-custom {
                background-color: #CD5C5C;
                border-color: #CD5C5C;
                color: white;
            }
            .btn-custom a {
                text-decoration: none;
                color: white;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <button class="btn btn-custom"><a href="${pageContext.request.contextPath}/jsp/forms.jsp" class="btn-custom">Registrar Evento</a></button>
            <h2 class="text-center mt-5">Lista de Eventos</h2>
            <table class="table table-striped">
                <thead class="header-table">
                    <tr>
                        <th>#</th>
                        <th>Nombre del Evento</th>
                        <th>Dirección</th>
                        <th>Día</th>
                        <th>Hora</th>
                        <th>Número de Asistentes</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="evento" items="${sessionScope.eventos}" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${evento.nombre}</td>
                            <td>${evento.direccion}</td>
                            <td>${evento.dia}</td>
                            <td>${evento.hora}</td>
                            <td>${evento.asistentes}</td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty sessionScope.eventos}">
                        <tr>
                            <td colspan="6" class="text-center">No se han agregado eventos todavía.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>

        </div>
    </body>
</html>
