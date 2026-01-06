<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Automóviles</title>
    
    <!-- Estilos CSS Minimalistas -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        
        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
        }

        h1 {
            margin: 0;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Lista de Automóviles</h1>
</header>

<div class="container">
    <h3>HashMap</h3>
    <table>
        <thead>
            <tr>
                <th>Fabricante</th>
                <th>Modelo</th>
                <th>Color</th>
            </tr>
        </thead>
        <tbody>
            <%
                Map<String, Automovil> hashMap = (Map<String, Automovil>) request.getAttribute("hashMap");
                if (hashMap != null) {
                    for (Automovil a : hashMap.values()) {
            %>
            <tr>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getModelo() %></td>
                <td><%= a.getColor() %></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>

    <h3>LinkedHashMap</h3>
    <table>
        <thead>
            <tr>
                <th>Fabricante</th>
                <th>Modelo</th>
                <th>Color</th>
            </tr>
        </thead>
        <tbody>
            <%
                Map<String, Automovil> linkedHashMap = (Map<String, Automovil>) request.getAttribute("linkedHashMap");
                if (linkedHashMap != null) {
                    for (Automovil a : linkedHashMap.values()) {
            %>
            <tr>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getModelo() %></td>
                <td><%= a.getColor() %></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>

    <h3>TreeMap</h3>
    <table>
        <thead>
            <tr>
                <th>Fabricante</th>
                <th>Modelo</th>
                <th>Color</th>
            </tr>
        </thead>
        <tbody>
            <%
                Map<String, Automovil> treeMap = (Map<String, Automovil>) request.getAttribute("treeMap");
                if (treeMap != null) {
                    for (Automovil a : treeMap.values()) {
            %>
            <tr>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getModelo() %></td>
                <td><%= a.getColor() %></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</div>

<footer>
    <p>&copy; 2026 Todos los derechos reservados</p>
</footer>

</body>
</html>
