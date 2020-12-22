<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editarana.aspx.cs" Inherits="Gestion_de_riesgos_2.editarana" %>

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
            <div class="container">
            
			<!-- Header -->
				 <header id="header">
                     <img id="logo_cuc" src="images/logo_cuc.png" alt="">
					<nav id="nav">
						<ul>
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
                            </ul></li>
							<li style="white-space: nowrap;"><a href="Login.aspx" class="button primary">Salir</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					
                        <header class="major">
                            <br />
							<h2>Análisis y Evaluación del Riesgo</h2>
						</header>
                        <div class="col-12">
                        <h1>Seleccione tipo de riesgo:</h1>
                                <asp:DropDownList ID="Tipo_Riesgoh" runat="server" Height="27px" Width="220px" Font-Size="Large" Enabled="False">
                                    <asp:ListItem>>> Seleccione <<</asp:ListItem>
                                    <asp:ListItem>Específico</asp:ListItem>
                                    <asp:ListItem>General</asp:ListItem>
                                </asp:DropDownList>			
						</div> 
						<!-- Form -->
                
            </div>

             <section>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style2">Código de Riesgo</td>
                    <td class="auto-style1">Evento</td>
                    <td class="auto-style2">Probabilidad</td>

                </tr>
                <tr>
                   <td class="auto-style6">
                                <asp:TextBox ID="codigo" runat="server" Height="25px" Width="170px" ReadOnly="True"></asp:TextBox>
                            </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Eventoh" runat="server" Height="25px" Width="276px"></asp:TextBox>
                    </td>
                         <td class="auto-style6">
                                <asp:DropDownList ID="Probabilidadh" runat="server" Height="27px" Width="220px" Font-Size="Large">
                                    <asp:ListItem>&gt;&gt; Seleccionar % &lt;&lt;</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                </asp:DropDownList>
                          </td>
                </tr>
            </table>
	 </section>

       <section>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style1">Impacto</td>
                    <td>Nivel de Riesgo Inherente</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                                <asp:DropDownList ID="Impactoh" runat="server" Height="27px" Width="220px" Font-Size="Large" AutoPostBack="True" OnSelectedIndexChanged="Impactoh_SelectedIndexChanged">
                                     <asp:ListItem>>> Seleccionar <<</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                    <td>
                        <asp:TextBox ID="Nivel_Riesgo_InHerenteh" runat="server" Height="25px" Width="285px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                
            </table>     
		</section>
						<header class="major">
						<h2>Evaluación de los Controles Actuales del Riesgo</h2>
						</header>
                <section>
                    <br />
					<table class="auto-style9">
                        <tr>
                            <td class="auto-style1">Código Control Actual</td>
                            <td class="auto-style1">Descripción Control Actual</td>
                            <td class="auto-style7">Disminución de Probabilidad</td>
                            <td class="auto-style7">Disminución de Impacto</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:TextBox ID="Cod_Control_Actualh" runat="server" Height="27px" Width="180px" Font-Size="Large"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="Descripcion_Control_Actualh" runat="server" Height="27px" Width="300px" Font-Size="Large"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="Disminucion_Probabilidadh" runat="server" Height="27px" Width="220px" Font-Size="Large" AutoPostBack="True" OnSelectedIndexChanged="Disminucion_Probabilidadh_SelectedIndexChanged">
                                    <asp:ListItem>>> Seleccionar % <<</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="Disminucion_Impactoh" runat="server" Height="27px" Width="220px" Font-Size="Large" AutoPostBack="True" OnSelectedIndexChanged="Disminucion_Impactoh_SelectedIndexChanged">
                                    <asp:ListItem>>> Seleccionar <<</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>	
			       </section>

                <section>
									<table class="auto-style9">
                        <tr>
                            <td class="auto-style7">Probabilidad con Control Actual</td>
                            <td class="auto-style7">Impacto con Control Actual</td>
                            <td class="auto-style7">Nivel de Riesgo Residual 1</td>
                        </tr>
                        <tr>
                             <td class="auto-style8">
                                <asp:TextBox ID="Probabilidad_Control_Actualh" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                             <td class="auto-style8">
                                <asp:TextBox ID="Impacto_Control_Actualh" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="Nivel_Riesgo_Residual_1h" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
			       </section>
						<header class="major">
                             <br />
                            <br />
						<h2>Medidas de Control de Riesgos Propuestos</h2>
						</header>
						<!-- Form -->
              
             <section>
				<table class="auto-style9">
                        <tr>
                            <td class="auto-style1">Codigo Control Propuesto</td>
                            <td class="auto-style5">Descripción del Control Propuesto</td>
                            <td class="auto-style7">Disminución de Probabilidad</td>
                            <td class="auto-style1">Disminución de Impacto</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:TextBox ID="Cod_Control_Propuestoh" runat="server" Height="27px" Width="180px" Font-Size="Large"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="Descripcion_Control_Propuestoh" runat="server" Height="27px" Width="300px" Font-Size="Large"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="Disminucion_Probabilidad1h" runat="server" Height="27px" Width="220px" Font-Size="Large" AutoPostBack="True" OnSelectedIndexChanged="Disminucion_Probabilidad1h_SelectedIndexChanged">
                                    <asp:ListItem>>> Seleccionar % <<</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="Disminucion_Impacto1h" runat="server" Height="27px" Width="220px" Font-Size="Large" OnSelectedIndexChanged="Disminucion_Impacto1h_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>>> Seleccionar <<</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
			        </section>
            
                 <section>
						<table class="auto-style9">
                        <tr>
                            <td class="auto-style7">Probabilidad con Control Propuesto</td>
                            <td class="auto-style5">Impacto Con Control Propuesto</td>
                            <td class="auto-style7">Nivel de Riesgo Residual 2</td>
                        </tr>
                        <tr>
                             <td class="auto-style8">
                                <asp:TextBox ID="Probabilidad_Control_Propuestoh" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                             <td class="auto-style8">
                                <asp:TextBox ID="Impacto1h" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="Nivel_Riesgo_Residual_2h" runat="server" Height="27px" Width="180px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
			        </section>
						<!-- Image -->
					
				<footer class="major">
                    <div class="container">
								<asp:Button ID="Agregar" runat="server" Text="Registrar" OnClick="Agregar_Click" class="primary" />
                    </div>
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
            <a class="link depth-1" href="MantAdministracion.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Administración de riesgos</a>
            <a class="link depth-1" href="MantUsuarios.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Usuarios</a>
            <a class="link depth-0" href="Login.aspx" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Salir</a>
            </nav>
        </div>
        <%--  --%>
        </div>
		</div>
	</form>
</body>
</html>

