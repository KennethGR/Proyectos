<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantAnalisis.aspx.cs" Inherits="Gestion_de_riesgos_2.MantAnalisis" %>
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
        <form id="uno" runat="server">
		<div id="page-wrapper">
            
            
			<!-- Header -->
				 <header id="header">
                     <img id="logo_cuc" src="images/logo_cuc.png" alt="">
					<nav id="nav">
						<ul>
							<li style="white-space: nowrap;">
							<li style="white-space: nowrap;">
								<a href="MantDiccionario.aspx">Diccionario de riesgos</a>
							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
								
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="MantEspecificos.aspx" style="display: block;">Ident. de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="MantGenerales.aspx" style="display: block;">Ident. de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAnalisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="MantAdministracion.aspx" style="display: block;">Admin. de riesgos</a></li>
							        <li style="white-space: nowrap;"><a href="MantUsuarios.aspx" style="display: block;">Usuarios</a></li>	
                            </ul>
                            </li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Salir</a></li>
							
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
							<h2>Mantenimiento de análisis y evaluación de riesgos</h2>
						</header>
						<div class="table-wrapper">
                            <br />
                            <br />
                            <a href="agregaranalisis1.aspx">Agregar nuevo registro de análisis y evaluación de riesgos</a>
                            <br />
                            <br />
                        </div>
                        <div style=" max-height:300px;overflow-y:scroll;overflow-x: scroll">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="cod" HeaderText="Codigo de Riesgo" />
                                    <asp:BoundField DataField="tipo" HeaderText="Tipo de Riesgo" />
                                    <asp:BoundField DataField="nivel1" HeaderText="Nivel De Riesgo Inherente" />
                                    <asp:BoundField DataField="codigoact" HeaderText="Codigo Control Actual" />
                                    <asp:BoundField DataField="nivelresidual1" HeaderText="Nivel de Riesgo Residual 1" />
                                    <asp:BoundField DataField="prop" HeaderText="Codigo Control Propuesto" />
                                    <asp:BoundField DataField="nivel2" HeaderText="Nivel de Riesgo Residual 2" />
                                    <asp:TemplateField HeaderText="Opcion">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server"  OnClientClick="return confirm('Estas Seguro de eliminar?')" OnClick="LinkButton1_Click">Eliminar</asp:LinkButton> | <a href="editarana.aspx?cod=<%# Eval("cod") %>">Editar</a>
                                            <asp:HiddenField ID="HiddenFieldAdmin" runat="server" Value='<%# Eval("cod") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [Tipoderiesgo], [NiveldeRiesgoInherente], [Codigo Control Actual] AS Codigo_Control_Actual, [NiveldeRiesgoResidual1], [Código Control Propuesto] AS Código_Control_Propuesto, [Nivelderiesgoresidual2] FROM [Evaluacion_y_Analisis]"></asp:SqlDataSource>
                        </div>
						<!-- Form -->
           
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