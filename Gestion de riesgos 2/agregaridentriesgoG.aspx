<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregaridentriesgoG.aspx.cs" Inherits="Gestion_de_riesgos_2.agregaridentriesgoG" %>

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
                          <br />
                        <br />
						<header class="major">
							<h2>Mantenimiento para Agregar Registro de Identificación de Riesgos Generales</h2>
						</header>
                        <div class="col-12">

                        <h1>Describa el Objetivo de Proceso:</h1>
                        <asp:TextBox ID="objetivo" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="2"></asp:TextBox>
						<br />
                        <br />
                        <h1>Ingrese el Código:</h1>
                        <asp:TextBox ID="codi" runat="server" Width="300px" Height="27px" class="primary"></asp:TextBox>
                        <br />
                        <br />
						</div>
						<!-- Form -->
           
                </div>
                </div>
             <section>
                       
                           
                <div class="table-wrapper">
                <div class="container">
				<table class="alt">
					<tr>
                    <td class="auto-style3">Código de causa</td>
                    <td class="auto-style4">Causa(Factor)</td>
                    <td class="auto-style5">Categoría</td>
                    <td class="auto-style5">Subcategoría</td>

                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList AppendDataBoundItems="true" ID="DropDownList1" runat="server" Height="27px" Width="220px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Codigo" DataValueField="Codigo">
                            <asp:ListItem>Seleccione una opción</asp:ListItem>    
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionConnectionString3 %>" SelectCommand="SELECT [Codigo] FROM [DiccionarioRiesgosEspecificos]"></asp:SqlDataSource>
                    </td>
					<td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="200px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server" Width="300px" Height="27px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="218px" ReadOnly="True"></asp:TextBox>
                    </td>
                    </tr>
					</table>
					</div>	
                     </div>
                                
			        </section>

							<section>  
                                <div class="wrapper style1">
                                    <div class="container">
                                        <div class="col-12">
                                            <h1>Definición de la Causa:</h1>
                                            <asp:TextBox ID="Definicion" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="2" ReadOnly="True"></asp:TextBox>
										    <br />
                                            <br />
                                        </div>

                                        <div class="col-12">
                                            <br />
                                                <h1>Fuente de causa:</h1>
                                                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                                <br />
                                                <br />
                                            <br />
										</div>
										<div class="col-12">
                                            <h1>Causa:</h1>
											<asp:TextBox ID="Causa" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>
										
                                        <div class="col-12">
                                            <h1>Eventos:</h1>
											<asp:TextBox ID="eventos" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>

										<div class="col-12">
                                            <h1>Consecuencia:</h1>
											<asp:TextBox ID="consecuencia" runat="server" class="primary" TextMode="MultiLine" Columns="70" Rows="5"></asp:TextBox>
                                            <br />
                                            <br />
										</div>
										<div class="col-12">
                                                <h1>Fecha de Identificación:</h1>
										</div>
                                        <div class="col-12">
											<ul class="actions">                                          
                                                <li><asp:TextBox ID="fecha" runat="server" Width="300px" Height="27px" class="primary" ReadOnly="True"></asp:TextBox></li>
											</ul>
										</div>
                                        <div class="col-12">
											<ul class="actions">
												<li><asp:Button ID="Agregar" runat="server" Text="Registrar" class="primary" OnClick="Agregar_Click" /></li>
											</ul>
										</div>
									</div>

                                </div>
                                 </section>
								
							

						<!-- Image -->
					</div>
				

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
