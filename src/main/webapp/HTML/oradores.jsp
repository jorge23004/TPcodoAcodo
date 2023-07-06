<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <link rel="shortcut icon" href="../imagenes/codoacodo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Oradores</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md bg-body-tertiary px-5 py-2 fixed-top" data-bs-theme="dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler"
                    aria-controls="navbar-toggler" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarToggler">
                    <a class="navbar-brand" href="../index.jsp">
                        <img id="logo-pagina" src="../imagenes/codoacodo.png" width="100" alt="Logo de la pagina">
                        <span class="nombre-logo">Conf Bs As</span>
                    </a>
                    <ul class="navbar-nav d-flex justify-content-center align-items-e">
                        <li class="nav-item cursor-pointer">
                            <a class="nav-link" aria-current="page" href="../index.jsp">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="oradores.jsp">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Conviértete en orador</a>    
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-verde-ticket" href="ticket.jsp">Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header> 
    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active pagina-oradores">
                <img src="../imagenes/Buenos-Aires-2.jpg" class="d-block w-100" alt="Buenos Aires">
            </div>
            <div class="carousel-item pagina-oradores">
                <img src="../imagenes/Buenos-Aires-5.jpg" class="d-block w-100" alt="Buenos Aires">
            </div>
            <div class="carousel-item pagina-oradores">
                <img src="../imagenes/Buenos-Aires-3.jpg" class="d-block w-100" alt="Obelisco">
            </div>
        </div>
    </div>    
    <% 
        String server = "localhost";
        String puerto = "3306";
        String bbdd = "prueba_cac";
        String url = "jdbc:mysql://" + server + ":" + puerto + "/";
        String usuario = "root";
        String password = "4842";

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url+bbdd, usuario, password);

        Statement mysql = con.createStatement();

        String oradores = "SELECT nombre, apellido, idioma, tematica, fecha_conferencia, hora_conferencia FROM oradores";
        ResultSet resultado = mysql.executeQuery(oradores);
    %>    
    <div class="container table-responsive text-center mt-5 mb-4">
        <h2 class="m-0">Lista de Oradores</h2> 
        <table class="table-bordered table table-striped mt-5">
            <tr class="table-dark">
                <th class="pe-5">NOMBRE</th>
                <th class="pe-5">APELLIDO</th>
                <th class="pe-5">IDIOMA</th>
                <th class="pe-5">TEMÁTICA</th>
                <th class="pe-5">FECHA</th>
                <th class="pe-5">HORA</th>
            </tr>
            <%  while (resultado.next()) { %>
            <tr>
                <td class="pe-5"><%= resultado.getString("nombre") %></td>
                <td class="pe-5"><%= resultado.getString("apellido") %></td>
                <td class="pe-5"><%= resultado.getString("idioma") %></td>
                <td class="pe-5"><%= resultado.getString("tematica") %></td>
                <td class="pe-5"><%= resultado.getDate("fecha_conferencia") %></td>
                <td class="pe-5"><%= resultado.getString("hora_conferencia") %></td>
            </tr>
            <%}%>
        </table>      
    </div>
    <footer>   
        <div class="footer-lista justify-content-center align-items-center">
            <a class="nav-link footer-link text-center" href="#">Preguntas<br>Frecuentes</a>
            <a class="nav-link footer-link text-center" href="#">Contáctanos</a>
            <a class="nav-link footer-link text-center" href="#">Prensa</a>
            <a class="nav-link footer-link text-center" href="#">Conferencia</a>                        
            <a class="nav-link footer-link text-center" href="#">Términos y <br> Condiciones</a>
            <a class="nav-link footer-link text-center" href="#">Privacidad</a>
            <a class="nav-link footer-link text-center" href="#">Estudiantes</a>
        </div> 
    </footer>  

    <!--- Bootstrap --->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    
    <!--- Librería Sweet Alert (Personaliza las alertas => https://sweetalert2.github.io/ --->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!--- Importa tickets.js --->
    <script src="../js/tickets.js"></script>
</body>
</html>