<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="Gestion_de_riesgos_2.Administración" %>


<!DOCTYPE html>
<html><head>
		<title>Gestion de Riesgos</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href= https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	    <style type="text/css">
            .auto-style1 {
                -webkit-overflow-scrolling: touch;
                overflow-x: auto;
                width: 1397px;
            }
            .auto-style2 {
                -webkit-overflow-scrolling: touch;
                overflow-x: auto;
                width: 1396px;
            }
            .auto-style3 {
                -webkit-overflow-scrolling: touch;
                overflow-x: auto;
                width: 1395px;
            }
            .auto-style4 {
                -webkit-overflow-scrolling: touch;
                overflow-x: auto;
                width: 1237px;
            }
        </style>
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
							        <li style="white-space: nowrap;"><a href="RiesgoInherente.aspx" style="display: block;"> Riesgos por dependencia</a></li>	
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Salir</a></li>
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
                    <div class="table-wrapper">
					<div class="container">
						<header class="major">
                            <br />
                            <br />
							<h2>Administración de Riesgos</h2>
						</header>
                       
            <div style=" max-height:300px;overflow-y:scroll;overflow-x: scroll">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                        <asp:BoundField DataField="Evento" HeaderText="Evento" SortExpression="Evento" />
                        <asp:BoundField DataField="Tipo_de_riesgo" HeaderText="Tipo de riesgo" SortExpression="Tipo_de_riesgo" />
                        <asp:BoundField DataField="Tolerancia_del_Riesgo" HeaderText="Tolerancia del Riesgo" SortExpression="Tolerancia_del_Riesgo" />
                        <asp:BoundField DataField="NiveldelRiesgo_inherente" HeaderText="Nivel de riesgo inherente" SortExpression="NiveldelRiesgo_inherente" />
                        <asp:BoundField DataField="NiveldelRiesgoResidual1" HeaderText="Nivel de riesgo residual 1" SortExpression="NiveldelRiesgoResidual1" />
                        <asp:BoundField DataField="NiveldelRiesgoresidual2" HeaderText="Nivel del riesgo residual 2" SortExpression="NiveldelRiesgoresidual2" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [Codigo], [Evento], [Tipo de riesgo] AS Tipo_de_riesgo, [Tolerancia del Riesgo] AS Tolerancia_del_Riesgo, [NiveldelRiesgo inherente] AS NiveldelRiesgo_inherente, [NiveldelRiesgoResidual1], [NiveldelRiesgoresidual2] FROM [Administracion1]"></asp:SqlDataSource>
            </div>
            </div>
						<!-- Form -->
                        
                </div>
            </div>


             <section>
                <div class="container">
						<div class="table-wrapper">
            <table style="width:100%;">
                <tr>
                   <td class="auto-style4">Código de Riesgo</td>
                            <td class="auto-style4">Evento Presentado</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                                <asp:DropDownList AppendDataBoundItems="true" ID="codigo" runat="server" Height="30px" Width="250px" Font-Size="Large" DataSourceID="SqlDataSource1" DataTextField="CodigoRiesgo" DataValueField="CodigoRiesgo" AutoPostBack="True" OnSelectedIndexChanged="codigo_SelectedIndexChanged">
                                    <asp:ListItem>-Seleccione el codigo-</asp:ListItem>
                                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [CodigoRiesgo] FROM [Evaluacion_y_Analisis]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox9" runat="server" Height="40px" Width="500px" ReadOnly="True"></asp:TextBox>
                            </td>
                </tr>
                
            </table>
        </div>
                        </div>        
			        </section>
                        

            <div id="main2" class="wrapper style1">
					<div class="container">
						<header class="major">
                             <br />
                            <br />
						<h2>Medidas de actuales de control del riesgos</h2>
						</header>
						<!-- Form -->
                </div>
                </div>

                 <br />
							 
                                  

                
                <section>
                    <div class="container">
                    <br />
                <div class="table-wrapper">
									<table class="auto-style9">
                        <tr>
                            <td class="auto-style7">Tipo de Riesgo</td>
                            <td class="auto-style7">Tolerancia del Riesgo</td>
                            <td class="auto-style7">Nivel de Riesgo Inherente</td>
                            <td class="auto-style7">Nivel de Riesgo Residual 1</td>
                        </tr>
                        <tr>
                             <td class="auto-style8">
                                <asp:TextBox ID="Tipo" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="Tolerancia" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="inherente1" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="residual1" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
								</div>	
                              </div>  
			        </section>

                <section>
                    <div class="container">
                    <br />
                <div class="table-wrapper">
						<table class="auto-style9">
                        <tr>
                            <td class="auto-style7">Grado de Afectación</td>
                            <td class="auto-style7">Importancia del objetivo del proceso</td>
                            <td class="auto-style7">Variación del nivel de riesgo con controles</td>
                            <td class="auto-style7">Análisis costo/beneficio</td>
                        </tr>
                        <tr>
                             <td class="auto-style8">
                                <asp:DropDownList ID="afectacion" runat="server" Height="27px" Width="180px" Font-Size="Large">
                                    <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                    <asp:ListItem>Bajo</asp:ListItem>
                                    <asp:ListItem>Medio</asp:ListItem>
                                    <asp:ListItem>Alto</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td class="auto-style6">
                                <asp:DropDownList ID="Importancia"  runat="server" Height="27px" Width="200px" >
                                    <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                    <asp:ListItem Value="Bajo">Bajo</asp:ListItem>
                                    <asp:ListItem>Medio</asp:ListItem>
                                    <asp:ListItem>Alto</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="variacion" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="costo" placeholder="₡" runat="server" Height="27px" Width="220px" Font-Size="Large"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
								</div>	
                              </div>  
			        </section>

                <section>
                    <div class="container">
                    <br />
                <div class="table-wrapper">
									<table class="auto-style9">
                        <tr>
                            <td class="auto-style7">Aceptabilidad del riesgo</td>
                            <td class="auto-style7">Resultado de la evaluación</td>
                            <td class="auto-style7">Nivel de Riesgo Residual 2</td>
                        </tr>
                        <tr>
                             <td class="auto-style8">
                                <asp:DropDownList ID="aceptabilidad" runat="server" Height="27px" Width="180px" Font-Size="Large">
                                    <asp:ListItem>-Seleccione una opcion-</asp:ListItem>
                                    <asp:ListItem>Por Definir</asp:ListItem>
                                    <asp:ListItem>Aceptarlo</asp:ListItem>
                                    <asp:ListItem>Evitarlo</asp:ListItem>
                                    <asp:ListItem>Reducirlo</asp:ListItem>
                                    <asp:ListItem>Compartirlo</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td class="auto-style8">
                                 <asp:TextBox ID="resultado" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="residual2" runat="server" Height="27px" Width="220px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
								</div>	
                              </div>  
			        </section>
    
						<!-- Image -->
            
					</div>

        


				<footer class="major">
							<ul class="actions special">
								<li><asp:Button ID="Agregar" runat="server" Text="Generar Documento" class="primary" OnClick="Agregar_Click" /></li>
							</ul>
						</footer>

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
									<li style="white-space: nowrap;"><a href="Especificos.aspx" style="display: block;">Ident. Riesgos Específicos</a></li>
									<li style="white-space: nowrap;"><a href="Generales.aspx" style="display: block;">Ident. Riesgos Generales</a></li>
                                    <li style="white-space: nowrap;"><a href="Analisis.aspx" style="display: block;">Análisis de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="Administracion.aspx" style="display: block;">Administración de riesgos</a></li>
                                    <li style="white-space: nowrap;"><a href="RiesgoInherente.aspx" style="display: block;">Riesgo por dependencia</a></li>
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
            <a class="link depth-1" href="RiesgoInherente.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Riesgos por dependencia</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Salir</a>
            </nav>
        </div>
        <%--  --%>
	</form>
</body>
</html>
