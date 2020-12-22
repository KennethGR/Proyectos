<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiccionarioG.aspx.cs" Inherits="Gestion_de_riesgos_2.Diccionario" %>

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
								<a href="DiccionarioG.aspx">Diccionario de riesgos</a>

							</li>
                            <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;"><a href="#">Gestión de riesgos</a>
								
							<ul class="" style="user-select: none; display: none; position: absolute;">
									<li style="white-space: nowrap;"><a href="Especificos.aspx" style="display: block;">Ident. de riesgos específicos</a></li>
									<li style="white-space: nowrap;"><a href="Generales.aspx" style="display: block;">Ident. de riesgos generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Analisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Administracion.aspx" style="display: block;">Admin. de riesgos</a></li>
							        <li style="white-space: nowrap;"><a href="RiesgoInherente.aspx" style="display: block;">Riesgos Por Dependencia</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Salir</a></li>
							<!--<li><a href="login_administrador.php" class="button primary">Login administrador</a></li>-->
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>Diccionario de Riesgos Institucionales</h2>
						</header>     
						<!-- Form -->
                </div>
            </div>
		
                     <div style=" max-height:300px;overflow-y:scroll;overflow-x: scroll">      
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" >
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                            <asp:BoundField DataField="Causa" HeaderText="Causa" SortExpression="Causa" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        </Columns>
                    </asp:GridView>
                    	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [Codigo], [Causa], [Descripcion] FROM [DiccionarioRiesgosEspecificos]"></asp:SqlDataSource>
                    </div>	
                 </div>

						<!-- Image -->
					
				

			<!-- Footer -->
				<footer id="footer">
					
					<ul class="copyright">
						<li>SEVRI CUC<a>2019</a></li>
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
									<li style="white-space: nowrap;"><a href="Especificos.aspx" style="display: block;">Ident. Riesgos Específicos</a></li>
									<li style="white-space: nowrap;"><a href="Generales.aspx" style="display: block;">Ident. Riesgos Generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Analisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Administracion.aspx" style="display: block;">Admin. de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="RiesgoInherente.aspx" style="display: block;">Riesgos Por Dependencia</a></li>
								</ul>
        <div id="titleBar"><a href= "#navPanel" class="toggle"></a><span class="title">Inicio</span></div>
        <div id="navPanel">
            <nav>
            
            <a class="link depth-0" href="DiccionarioG.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Diccionario de riesgos</a>
            <a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Gestión de riesgos</a>
            <a class="link depth-1" href="Generales.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos generales</a>
            <a class="link depth-1" href="Especificos.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Ident. de riesgos específicos</a>
            <a class="link depth-1" href="Analisis.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Análisis de riesgos</a>
            <a class="link depth-1" href="Administracion.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Admin. de riesgos</a>
            <a class="link depth-1" href="RiesgoInherente.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Riesgos Por Dependencia</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Salir</a>
            </nav>
        </div>
        <%--  --%>
	</form>
</body>
</html>
