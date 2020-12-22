<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregarriesgoespecifico.aspx.cs" Inherits="Gestion_de_riesgos_2.agregarriesgoespecifico" %>

<!DOCTYPE html>
<html><head>
		<title>Gestion de Riesgos</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href= https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	</head>
	<body class="landing">
        <form runat="server">
		<div id="page-wrapper">
            
			<!-- Header -->
				 <header id="header">
                     <img id="logo_cuc" src="images/logo_cuc.png" alt="">
					&nbsp;<nav id="nav">
						<ul>
							<li style="white-space: nowrap;">
							<li style="white-space: nowrap;">
							<a href="MantDiccionario.aspx">Diccionario de riesgos</a>
							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="MantEspecificos.aspx" style="display: block;">Ident. de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="MantGenerales.aspx" style="display: block;">Ident. de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAnalisis.aspx" style="display: block;">Análisis y evaluación de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAdministracion.aspx" style="display: block;">Admin. de riesgos</a></li>
							        <li style="white-space: nowrap;"><a href="MantUsuarios.aspx" style="display: block;">Usuarios</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Salir</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
                          <br />
                        <br />
						<header class="major">
							<h2>Mantenimiento de Agregar Registro de Identificación de Riesgos Específicos</h2>
						</header>
                        
                        <div class="col-12">
                        <h1>Ingrese el objetivo de proceso:</h1>
						<asp:TextBox ID="objetivo" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="2"></asp:TextBox>
                        <br />
						</div>

                        <div class="col-12">
                                                <h1>Ingrese el Código:</h1>
                                                <asp:TextBox ID="TextBox1" Width="200px" Height="27px" runat="server" class="primary"></asp:TextBox>
                                                <br />
										</div>
						<!-- Form -->
           
                </div>
            
							<section>
                                    <div class="container">
									<div class="col-12">
                                    <h1>Seleccione el área de riesgo la causa específica:</h1>
                                    <asp:DropDownList ID="Area" runat="server" Height="27px" Width="220px" Font-Size="Large">
                                    <asp:ListItem>Categoría</asp:ListItem>
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
                                    <h1>Seleccione la dependencia de riesgo:</h1>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="220px" Font-Size="Large">
                                    <asp:ListItem>Directo</asp:ListItem>
                                    <asp:ListItem>Indirecto</asp:ListItem>
                                    </asp:DropDownList>
                                    <br /> 
                                    <br />
									</div>										
													
                                    <br />
                                        <div class="col-12">
                                                <h1>Ingrese la causa específica:</h1>
                                                <asp:TextBox ID="causaes" Width="200px" Height="27px" runat="server" class="primary"></asp:TextBox>
                                            <br />
                                            <br />  
										</div>
										<div class="col-12">
                                            <h1>Describa la Causa:</h1>
											<asp:TextBox ID="causa" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>
										
                                        <div class="col-12">
                                            <h1>Describa los Eventos:</h1>
											<asp:TextBox ID="eventos" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>

										<div class="col-12">
                                            <h1>Describa las Consecuencias:</h1>
											<asp:TextBox ID="consecuencia" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>
                                        <div class="col-12">
                                                <h1>Fecha de Identificación:</h1>
										</div>
                                        <div class="col-12">
											<ul class="actions">                                          
                                                <li><asp:TextBox ID="fecha1" runat="server" Width="300px" Height="27px" class="primary" ReadOnly="True"></asp:TextBox></li>
											</ul>
										</div>
                                        <div class="col-12">
											<ul class="actions">
												<li><asp:Button ID="Agregar" runat="server" Text="Registrar" class="primary" OnClick="Agregar_Click" /></li>
											</ul>
										</div>
                                    </div>
							</section>
                                </div>
						<!-- Image -->
				

			<!-- Footer -->
				<footer id="footer">
					<ul class="copyright">
						<li>SEVRI CUC<a>2019</a></li>
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
									<li style="white-space: nowrap;"><a href="MantEspecificos.aspx" style="display: block;">Ident. Riesgos Específicos</a></li>
									<li style="white-space: nowrap;"><a href="MantGenerales.aspx" style="display: block;">Ident. Riesgos Generales</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAnalisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAdministracion.aspx" style="display: block;">Admin. de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="MantUsuarios.aspx" style="display: block;">Usuarios</a></li>
								</ul>
        <div id="titleBar"><a href= "#navPanel" class="toggle"></a><span class="title">Inicio</span></div>
        <div id="navPanel">
            <nav>
            <a class="link depth-0" href="MantDiccionario.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Diccionario de riesgos</a>
            <a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Gestión de riesgos</a>
            <a class="link depth-1" href="MantGenerales.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos generales</a>
            <a class="link depth-1" href="MantEspecificos.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos específicos</a>
            <a class="link depth-1" href="MantAnalisis.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Análisis de riesgos</a>
            <a class="link depth-1" href="MantAdministracion.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Admin. de riesgos</a>
           <a class="link depth-1" href="MantUsuarios.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Usuarios</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Salir</a>
            </nav>
        </div>
        <%--  --%>
	</form>
</body>
</html>
