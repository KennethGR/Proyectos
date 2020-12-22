<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RiesgoInherente.aspx.cs" Inherits="Gestion_de_riesgos_2.Riesgo_Inherente" %>

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
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
                    <section>
                    <div class="container">
                    <br />
                <div class="col-12">
						<table class="auto-style9">

                        <tr>
                            <td class="auto-style1">Objetivo de Proceso</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                            <asp:TextBox ID="objetivo" runat="server" TextMode="MultiLine" Rows="3" ReadOnly="True" ></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                        <table class="auto-style9">
                        <tr>
                        <td class="auto-style7" style="text-align:center;">Riesgos Identificados Por Tipo, Control Actual y Control Propuesto</td>
                        </tr>
                        </table>
                    </div>
                    </div>
                    </section>
                        <div class="row gtr-uniform gtr-50">
										
										<div class="col-4" style="width: 330px; margin: 0 auto;">
                                        <h1>Tipo de Riesgo</h1>
                                         <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                             <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                             <asp:ListItem>Especifico</asp:ListItem>
                                             <asp:ListItem>General</asp:ListItem>
                                            </asp:DropDownList>
										</div>

										<div class="col-4" style="width: 330px; margin: 0 auto;">
                                        <h1>Codigo de Riesgo</h1><asp:DropDownList AppendDataBoundItems="True" ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="CodigoRiesgo" DataValueField="CodigoRiesgo" Enabled="False">
                                            <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [CodigoRiesgo] FROM [Ident_Riesgos_Especificos]"></asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList3" AppendDataBoundItems="True" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="CodigodeRiesgo" DataValueField="CodigodeRiesgo" Visible="False">
                                            <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [CodigodeRiesgo] FROM [Ident_Riesgos_Generales]"></asp:SqlDataSource>
                                        <br>  
										</div>
					    </div>
                        <section>
                        <table>
                        <tr>
                            <td class="auto-style1">Causa</td>
                            <td class="auto-style1">Evento(Riesgo)</td>
                            <td class="auto-style7">Consecuencia</td> 
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:TextBox ID="causa" runat="server" TextMode="MultiLine" Rows="6" ReadOnly="True" ></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="evento" runat="server" TextMode="MultiLine" Rows="6" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="consecuencia" runat="server" TextMode="MultiLine" Rows="6" ReadOnly="True" ></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                        <table>
                        <tr>
                            <td class="auto-style7">Controles Actuales</td>
                            <td class="auto-style7">Controles Propuestos</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="6" ReadOnly="True" ></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="6" ReadOnly="True" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                        </section>
					</div>	
                        </div>
                    
                </div>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
					</ul>
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
									<li style="white-space: nowrap;"><a href="Especificos.aspx" style="display: block;">Ident. Riesgos Específicos</a></li>
									<li style="white-space: nowrap;"><a href="Generales.aspx" style="display: block;">Ident. Riesgos Generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Analisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Administracion.aspx" style="display: block;">Administración de riesgos</a></li>
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
            <a class="link depth-1" href="Administracion.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Administración de riesgos</a>
            <a class="link depth-1" href="RiesgoInherente.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Riesgos Por Dependencia</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Salir</a>
            </nav>
        </div>
        <%--  --%>
	</form>
</body>
</html>