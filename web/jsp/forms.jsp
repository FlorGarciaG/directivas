<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Agregar y Mostrar Eventos</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .container {
                max-width: 600px;
                margin-top: 50px;
            }
            .btn-custom {
                background-color: #CD5C5C;
                border-color: #CD5C5C;
                color: white;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h2 class="text-center">Registrar un nuevo evento</h2>

            <form role="form" name="evento" action="procesarEvento.jsp" method="POST" class="bg-light p-4 border rounded">
                <div class="form-group">
                    <label for="nombre">Nombre del Evento:</label>
                    <input type="text" minlength="5" maxlength="100" class="form-control" 
                           name="nombre" id="nombre" placeholder="Nombre del evento" required>
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección del Evento:</label>
                    <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección" required>
                </div>
                <div class="form-group">
                    <label for="dia">Día del Evento:</label>
                    <input type="date"  class="form-control" id="dia" name="Dia" required>
                </div>
                <div class="form-group">
                    <label for="hora">Hora del Evento:</label>
                    <input type="time" class="form-control" id="hora" name="hora" required>
                </div>
                <div class="form-group">
                    <label for="asistentes">Número de Asistentes:</label>
                    <input type="number" step="1" min="15" max="100" class="form-control" id="asistentes" 
                           name="asistentes" placeholder="Número de asistentes" required>
                </div>
                <button type="submit" class="btn btn-custom btn-block">Enviar</button>
            </form>
        </div>

        <!-- Scripts de Bootstrap -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
