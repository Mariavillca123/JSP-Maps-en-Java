<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Comparación de Map</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>

<h1>Comparación de estructuras Map</h1>

<div class="container">

    <!-- HashMap -->
    <div class="box">
        <h2>HashMap<br>(sin orden)</h2>
        <%
        for (Automovil a :
            ((Map<String, Automovil>) request.getAttribute("hashMap")).values()) {
        %>
            <div class="item"><%= a.getModelo() %></div>
        <%
        }
        %>
    </div>

    <!-- LinkedHashMap -->
    <div class="box">
        <h2>LinkedHashMap<br>(orden de inserción)</h2>
        <%
        for (Automovil a :
            ((Map<String, Automovil>) request.getAttribute("linkedHashMap")).values()) {
        %>
            <div class="item"><%= a.getModelo() %></div>
        <%
        }
        %>
    </div>

    <!-- TreeMap -->
    <div class="box">
        <h2>TreeMap<br>(orden alfabético)</h2>
        <%
        for (Automovil a :
            ((Map<String, Automovil>) request.getAttribute("treeMap")).values()) {
        %>
            <div class="item"><%= a.getModelo() %></div>
        <%
        }
        %>
    </div>

</div>

</body>
</html>

