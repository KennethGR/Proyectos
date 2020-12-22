<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Gestion_de_riesgos_2.Registro" %>


<!DOCTYPE html>
<html><head>
		<title>Gestion de Riesgos</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- Codigo ccs utilizado para el diseño -->
		<link rel="stylesheet" href="css/main.css">
    <!-- Libreria para iconos de Font Awesome -->
        <link rel="stylesheet" href= https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	</head>
	<body class="landing">
        <form id="uno" runat="server">
		<div id="page-wrapper">
            
            
			<!-- Header para crear menu -->
				<header id="header">
                    <img id="logo_cuc" src="images/logo_cuc.png" alt="">
					<nav id="nav">
						<ul>
							<li style="white-space: nowrap;">
                            <a href="index.aspx">Inicio</a></li>
							<li style="white-space: nowrap;">
								<a href="Login.aspx">Diccionario de Riesgos</a>
							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
								
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Ident. de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Admin. de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Usuarios</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Iniciar Sesión</a></li>
							
						</ul>
					</nav>
                <br />
                        <br />
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
                        <header class="major">
                            <br />
                            <br />
							<h2>&nbsp;Registro de Usuarios</h2>
						</header>
                        <div class="col-12">
                        <br />
                        <h1>Ingrese el nombre de funcionario responsable:</h1>
                        <asp:TextBox ID="codcausa" class="primary" runat="server" Height="50px" Width="600px"></asp:TextBox>
                            <br />
                            <br />
                            </div>
                         <div class="col-12">
                        <h1>Seleccione el área de aplicación:</h1>
                        <asp:DropDownList ID="DropDownList1" class="primary" runat="server" Height="50px" Width="400px">
                            <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                            <asp:ListItem>Administración</asp:ListItem>
                            <asp:ListItem>Academia</asp:ListItem>
                            <asp:ListItem>DECAT</asp:ListItem>
                            <asp:ListItem>DPD</asp:ListItem>
                            <asp:ListItem>Decanatura</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <br />
						</div>
                         <div class="col-12">
                        <h1>Seleccione la dependencia o carrera:</h1>
                            <asp:DropDownList ID="DropDownList2" class="primary" runat="server" Height="50px" Width="400px">
                                <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                <asp:ListItem>DPD</asp:ListItem>
                                <asp:ListItem>DPD-Gestión-Administrativa DPD</asp:ListItem>
                                <asp:ListItem>UPP-Gestión Unidad de Planificación y Presupuesto</asp:ListItem>
                                <asp:ListItem>UIN-Gestión Unidad de Investigación</asp:ListItem>
                                <asp:ListItem>USC-Gestión Unidad de Control y Seguimiento Estratégico</asp:ListItem>
                                <asp:ListItem>UGO-Gestión Unidad Organizacional</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <br />
						 </div>
                       <div class="col-12">
                        <h1>Ingrese su correo:</h1>
                        <asp:TextBox ID="cat" class="primary" runat="server" Height="50px" Width="500px"></asp:TextBox>	
                        <br />
                        <br />
						</div>
                        <div class="col-12">
                        <h1>Ingrese su contraseña personal:</h1>
                        <asp:TextBox ID="subcat" class="primary" runat="server" Height="50px" Width="500px" TextMode="Password"></asp:TextBox>
                            <br />
                            <br />
						</div>
                        <div class="col-12">
                        <h1>Seleccione el Rol:</h1>
                            <asp:DropDownList ID="DropDownList3" class="primary" runat="server" Height="50px" Width="400px">
                                <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                <asp:ListItem>Administrador</asp:ListItem>
                                <asp:ListItem>Usuario</asp:ListItem>
                            </asp:DropDownList>
                             <br />
                             <br />
						 </div>
                        <asp:Button ID="btnguardar" runat="server" Text="Registrar" class="primary" OnClick="btnguardar_Click"/>
						    <br />
						
                </div>
            </div>
			</div>

			<!-- Footer -->
				<footer id="footer">
					<ul class="copyright">
						<li>SEVRI CUC <a>2019</a></li>
					</ul>
				</footer>

		

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
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Admin. de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Login.aspx" style="display: block;">Usuarios</a></li>
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
            <a class="link depth-1" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Usuarios</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Iniciar Sesión</a>
            </nav>
        </div>
        <%--  --%>
	</form>
</body>
</html>