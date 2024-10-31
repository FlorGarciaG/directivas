<%@page import="java.sql.Time"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.evento"%>
<%@page import="java.util.List"%>
<% 
    request.setCharacterEncoding("UTF-8");
    
    List<evento> eventos = (List<evento>) session.getAttribute("eventos");
    if (eventos == null) {
        eventos = new ArrayList<>();
        session.setAttribute("eventos", eventos);
    }

    String nombre = request.getParameter("nombre");
    String direccion = request.getParameter("direccion");
    String fecha = request.getParameter("Dia");
    String hora = request.getParameter("hora");
    String asistentes = request.getParameter("asistentes");

    if (nombre != null && !nombre.isEmpty()) {
        int asistentesFinal = Integer.parseInt(asistentes);
        
        Date fechafinal = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date utilDate = sdf.parse(fecha);
            fechafinal = new java.sql.Date(utilDate.getTime()); 
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Time horafinal = null;
        try {
            SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
            java.util.Date utilTime = sdfTime.parse(hora);
            horafinal = new java.sql.Time(utilTime.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        evento nuevoEvento = new evento(nombre, direccion, fechafinal, horafinal, asistentesFinal);
        eventos.add(nuevoEvento);
        session.setAttribute("eventos", eventos);
    }
    

    // Actualizar la lista de eventos en la sesión
    session.setAttribute("eventos", eventos);

    // Redirigir a la página de eventos
    response.sendRedirect("eventos.jsp");
%>