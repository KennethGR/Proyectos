<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Gestion_de_riesgos_2.Inicio" %>

<!DOCTYPE html>

<html><head>
		<title>Gestion de Riesgos</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	</head>
	<body class="landing">
        <form runat="server">
		<div id="page-wrapper">

			<!-- Header -->
            <header id="header">
					<img id="logo_cuc" src="images/logo_cuc.png" alt="">
					<nav id="nav">
						<ul>
							<li style="white-space: nowrap;">
                            <a href="index.aspx">Inicio</a></li>
							<li style="white-space: nowrap;">
								<a href="Login.aspx">Diccionario de riesgos</a>
							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
								
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Admin de riesgos</a></li>
							        <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Riesgos Por Dependencia</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Iniciar Sesión</a></li>
						</ul>
					</nav>
				</header>
	
			<!-- Banner -->
				<section id="banner" style="">
                    
					<div class="content">
                        <br>
                        <span><img src="images/logo-cuc-negro.png" alt=""></span>
						<header>
                            
							<h2>SEVRI 2019</h2>
							<p>SISTEMA ESPECÍFICO DE<br>
							VALORACIÓN DE RIESGOS</p>
						</header>
						<span class="image"><img src="images/imagen1.jpg" alt=""></span>
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>
				</section>
			<!-- Dos -->
				<section id="dos" class="spotlight style2 right" style="">
					<span class="image fit main"><img src="images/imagen2.jpg" alt=""></span>
					<div class="content">
						<header>
							<h2><a href="Login.aspx"">Diccionario de Riesgos</a></h2>
						</header>
						<p>Se hace mención en el documento, que este tiene un código de riesgo,categoría, subcategoría y la descripción del riesgo.</p>
                        <p>Se destaca por ser un documento institucional muy importante.</p>
					</div>
					<a href="#dos" class="goto-next scrolly">Next</a>
				</section>

			<!-- Cuatro -->
				<section id="cuatro" class="spotlight style3 left" style="">
					<span class="image fit main bottom"><img src="images/imagen3.png" alt=""></span>
					<div class="content">
						<header>
							<h2><a href="Login.aspx">Identificación de Riesgos Generales</a></h2>
						</header>
						<p>Consiste en la determinación y la descripción de los eventos de índole general que pueden afectar de manera significativa el cumplimiento de los objetivos fijados.</p>
					</div>
					<a href="#cuatro" class="goto-next scrolly">Next</a>
				</section>

            <!--    Cinco -->
            <section id="cinco" class="spotlight style2 right" style="">
					<span class="image fit main"><img src="images/imagen4.jpg" alt=""></span>
					<div class="content">
						<header>
							<h2><a href="Login.aspx">Identificación de Riesgos Específicos</a></h2>
						</header>
						<p>Consiste en la determinación y la descripción de los eventos de índole específico que pueden afectar de manera significativa el cumplimiento de los objetivos fijados.</p>
					</div>
					<a href="#cinco" class="goto-next scrolly">Next</a>
				</section>
            
			<!-- Four -->
				<section id="four" class="wrapper style1 special fade-up">
					<div class="container">
						<header class="major">
							<h2>SEVRI 2019</h2>
							<p>Conjunto organizado de elementos que interacción para <br><br>la identificación ,análisis,administración, comunicación de los riesgos institucionales</p>
						</header>
						<div class="box alt">
							<div class="row gtr-uniform">
                                <section class="col-4 col-6-medium col-12-xsmall">
									<span class="icon alt major fal fa-table"></span>
									<h3><a href="Login.aspx">Administración de Riesgos</a></h3>
									<p>Consiste en la identificación, evaluación,selección y ejecución de medidas para la administración de riesgos.(En normativas técnicas esta actividad también se denomina “tratamiento de riesgos”).</p>
								</section>

								<section class="col-4 col-6-medium col-12-xsmall">
									<span class="icon alt major fal fa-address-book"></span>
									<h3><a href="Login.aspx">Análisis de Riesgos</a></h3>
									<p>Consiste en la determinación del nivel de riesgo a partir de la probabilidad y la consecuencia de los eventos identificados.</p>
								</section>
								
								<section class="col-4 col-6-medium col-12-xsmall">
									<span class="icon alt major fal fa-globe" aria-hidden="true"></span>
									<h3><a href="Login.aspx">Dependencia Riesgo Inherente</a></h3>
									<p>Corresponde a la vista de riesgos por dependencias,nivel de riesgo inherente, controles actuales de esos riesgos y controles propuestos.</p>
								</section>
							</div>
						</div>
					</div>
				</section>

			
			<!-- Footer -->
				<footer id="footer">
					<ul class="copyright">
						<li>© Untitled. All rights reserved.</li><li><a></a></li><li>Design: <a>HTML5 UP</a></li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/jquery.dropotron.min.js"></script>
			<script src="js/jquery.scrollex.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

        <ul class="dropotron level-0 right" style="user-select: none; position: absolute; z-index: 1000; left: 1062.86px; top: 60px; opacity: 1; display: none;">
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. Riesgos Específicos</a></li>
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. Riesgos Generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Administración de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Riesgos Por Dependencia</a></li>
								</ul>
        <div id="titleBar"><a href= "#navPanel" class="toggle"></a><span class="title">Inicio</span></div>
        <div id="navPanel">
            <nav>
            <a class="link depth-0" href="index.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Inicio</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Diccionario de riesgos</a>
            <a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Gestión de riesgos</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos generales</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos específicos</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Análisis de riesgos</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Admin. de riesgos</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Riesgos Por Dependencia</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Iniciar Sesión</a>
            </nav>
        </div>
        </form>
       </body></html>