<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestion_de_riesgos_2.index" %>


<html><head>
		<title>Gestion de Riesgos</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href= https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
    <script type="text/javascript" >
    function Validate()
    {
    var UName=document.getElementById('email1');
    var Password=document.getElementById('contraseña1');
    if((UName.value=='') || (Password.value==''))
    {
     alert('UserName or Password should not be blank');
     return false;
    }
    else
    {
      return true;
    }
    }
    </script>
	</head>
	<body class="landing">
        <form id="uno" runat="server">
		<div id="page-wrapper">
            
            
			<!-- Header -->
				<header id="header">
                     <img id="logo_cuc" src="images/logo_cuc.png" alt="">
					&nbsp;<nav id="nav">
						<ul>
							<li style="white-space: nowrap;">
                            <a href="index.aspx">Inicio</a></li>
							<li style="white-space: nowrap;">
								<a href="Login.aspx">Diccionario de riesgos</a>
							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
								
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Admin. de riesgos</a></li>
							        <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Riesgos Por Dependencia</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Iniciar Sesión</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
                        <header class="major">
                            <br />
                            <br />
							<h2>Inicio de Sesión</h2>
						</header>
                        <div class="col-12">
						<ul class="col-6 col-12-xsmall">
                        <li>Ingrese su Email:</li>
                        <asp:TextBox ID="email1" runat="server" placeholder="Ingrese su Email" ></asp:TextBox>
						</ul>
                        <ul class="col-6 col-12-xsmall">
                        <li>Ingrese su Contraseña:</li>
                        <asp:TextBox ID="contraseña1" runat="server" placeholder="Ingrese su Contraseña" TextMode="Password" ></asp:TextBox>
						</ul>
                        <ul class="actions">
						<li><asp:Button ID="Ingresar" runat="server" Text="Ingresar" class="primary" OnClick="Ingresar_Click" />&nbsp; </li>				
						</ul>
                        <a href="Registro.aspx">No estás registrado? Ingresa a este link</a>
						</div>
                </div>
            </div>
			<!-- Footer -->
				<footer id="footer">
					<ul class="copyright">
						<li>SEVRI CUC <a>2019</a></li>
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
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Administración de riesgos</a>
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Riesgos Por Dependencia</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Iniciar Sesión</a>
            </nav>
        </div>
        <%--  --%>
	

</form>
</body>
</html>