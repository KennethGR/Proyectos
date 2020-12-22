using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class agregarAdmi : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        public SqlConnection con = new SqlConnection(
        WebConfigurationManager.ConnectionStrings["GestionRiesgosEntities"].ConnectionString);
        SqlCommand cmd;
        int RowCount;
        public double inherente;
        public double residual22;

        protected void Page_Load(object sender, EventArgs e)
        {
            cmd = new SqlCommand("SELECT * FROM Evaluacion_y_Analisis where [CodigoRiesgo]='" + codigo.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr1;
            dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                string events = (string)dr1["Evento"].ToString();
                TextBox9.Text = events;

                double inher = Convert.ToDouble((string)dr1["NiveldeRiesgoInherente"].ToString());
                inherente1.Text = Convert.ToString(inher);

                string resi = (string)dr1["Nivelderiesgoresidual1"].ToString();
                residual1.Text = resi;

                double resid = Convert.ToDouble((string)dr1["Nivelderiesgoresidual2"].ToString());
                residual2.Text = Convert.ToString(resid);

                Double variacion1 = inher - resid;
                variacion.Text = Convert.ToString(variacion1);
            }
            con.Close();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void codigo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (codigo.SelectedValue.ToString() == "-Seleccione el codigo-")
            {
                
                Response.Write("<script>window.alert('Seleccion invalida,compruebe nuevamente.');</script>");
                Tipo.Text = "";
                Tolerancia.Text = "";
                resultado.Text = "";
                TextBox9.Text = "";
                inherente1.Text = "";
                residual1.Text = "";
                residual2.Text = "";
                variacion.Text = "";
            }
            else
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT NiveldeRiesgoInherente FROM Evaluacion_y_Analisis";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                RowCount = dt.Rows.Count;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        inherente = reader.GetDouble(0);
                        if (inherente >= 2)
                        {
                            Tipo.Text = "Alto";
                        }
                        else
                        {
                            Tipo.Text = "Bajo";
                        }

                    }
                }
                con.Close();


                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT NiveldeRiesgoInherente FROM Evaluacion_y_Analisis";
                cmd.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                da1.Fill(dt1);

                RowCount = dt1.Rows.Count;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        double inherente = reader.GetDouble(0);
                        if (inherente >= 10)
                        {
                            Tolerancia.Text = "Inaceptable";
                        }
                        else
                        {
                            Tolerancia.Text = "Aceptable";
                        }
                    }
                }
                con.Close();

                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT Nivelderiesgoresidual2 FROM Evaluacion_y_Analisis";
                cmd.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd);
                da2.Fill(dt2);

                RowCount = dt2.Rows.Count;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        residual22 = reader.GetDouble(0);
                        if (residual22 >= 2)
                        {
                            resultado.Text = "No Controlado";
                        }
                        else
                        {
                            resultado.Text = "Controlado";
                        }
                    }
                }
                con.Close();
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            if (checkearcodigo() == true)
            {
                Response.Write("<script>window.alert('El registro de codigo ya existe,intentelo nuevamente');</script>");
                Tipo.Text = "";
                Tolerancia.Text = "";
                resultado.Text = "";
                TextBox9.Text = "";
                inherente1.Text = "";
                residual1.Text = "";
                residual2.Text = "";
                variacion.Text = "";
                codigo.SelectedIndex = 0;
            }
            else
            {
                if (codigo.SelectedValue.ToString() == "-Seleccione el codigo-" || string.IsNullOrEmpty(TextBox9.Text) || string.IsNullOrEmpty(Tipo.Text) || string.IsNullOrEmpty(Tolerancia.Text) || string.IsNullOrEmpty(inherente1.Text) || string.IsNullOrEmpty(residual1.Text) || afectacion.SelectedValue.ToString() == "-Seleccione el codigo-" || Importancia.SelectedValue.ToString() == "-Seleccione el codigo-" || string.IsNullOrEmpty(variacion.Text) || string.IsNullOrEmpty(costo.Text) || string.IsNullOrEmpty(aceptabilidad.Text) || string.IsNullOrEmpty(resultado.Text) || string.IsNullOrEmpty(residual2.Text))
                {
                    Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
                    Tipo.Text = "";
                    Tolerancia.Text = "";
                    resultado.Text = "";
                    TextBox9.Text = "";
                    inherente1.Text = "";
                    residual1.Text = "";
                    residual2.Text = "";
                    variacion.Text = "";
                }

                else
                {
                    {
                        try
                        {
                            Administracion1 administracion = new Administracion1();
                            administracion.Codigo = this.codigo.Text;
                            administracion.Evento = this.TextBox9.Text;
                            administracion.Tipo_de_riesgo = this.Tipo.Text;
                            administracion.Tolerancia_del_Riesgo = this.Tolerancia.Text;
                            administracion.NiveldelRiesgo_inherente = Convert.ToDouble(this.inherente1.Text);
                            administracion.NiveldelRiesgoResidual1 = Convert.ToDouble(this.residual1.Text);
                            administracion.Grado_de_afectación = this.afectacion.Text;
                            administracion.Importancia_del_Objetivo_del_Proceso__actividades__tareas_ = this.Importancia.Text;
                            administracion.Variacióndelniveldelriesgoconcontroles = Convert.ToDouble(this.variacion.Text);
                            administracion.Análisis_costo_beneficio = this.costo.Text;
                            administracion.Aceptabilidad_del_riesgo = this.aceptabilidad.Text;
                            administracion.Resultado_de_la_evaluación = this.resultado.Text;
                            administracion.NiveldelRiesgoresidual2 = Convert.ToDouble(this.residual2.Text);
                            de.Administracion1.Add(administracion);
                            de.SaveChanges();
                            ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Registro Existoso');window.location ='MantAdministracion.aspx';",
                        true);
                        }
                        catch
                        {
                            Response.Write("<script>window.alert('No se agrego el registro, compruebe los datos nuevamente.');</script>");
                        }
                    }
                }
            } 
        }

        public Boolean checkearcodigo()
        {
            Boolean fechavalida = false;
            string mycon = "workstation id=RiskManagementProject.mssql.somee.com;packet size=4096;user id=kennethalgr_SQLLogin_1;pwd=cuxvztfoig;data source=RiskManagementProject.mssql.somee.com;persist security info=False;initial catalog=RiskManagementProject";

            string myquery = "SELECT * FROM Administracion1 Where Codigo ='" + codigo.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                fechavalida = true;
            }
            con.Close();
            return fechavalida;
        }
    }
}