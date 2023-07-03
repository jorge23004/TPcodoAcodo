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
    <title>Tickets</title>
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
                            <a class="nav-link" href="oradores.jsp">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  active" href="#">Conviértete en orador</a>    
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-verde-ticket" href="ticket.jsp">Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header> 
    <div id="carouselExample" class="carousel slide card-superpuesta" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../imagenes/ba1.jpg" class="d-block w-100" alt="Buenos Aires">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/ba2.jpg" class="d-block w-100" alt="Buenos Aires">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/ba3.jpg" class="d-block w-100" alt="Obelisco">
            </div>
        </div>
    <div class="text-center mt-3 mb-4">
        <h2 class="m-0">Lista de Oradores</h2> 
        <table class="tabla table table-striped mt-5 d-flex justify-content-around">
            <tr>
                <th class="pe-5">ID</th>
                <th class="pe-5">NOMBRE</th>
                <th class="pe-5">APELLIDO</th>
                <th class="pe-5">DNI</th>
                <th class="pe-5">TEMÁTICA</th>
            </tr>
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