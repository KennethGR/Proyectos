using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class Especificos : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.fecha1.Text = DateTime.Now.ToString("dd/MM/yyyy");
            if (!Page.IsPostBack)
            {
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(objetivo.Text) || string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(Area.Text) || string.IsNullOrEmpty(DropDownList2.Text) || string.IsNullOrEmpty(causa.Text) || string.IsNullOrEmpty(eventos.Text) || string.IsNullOrEmpty(consecuencia.Text) || string.IsNullOrEmpty(fecha1.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
                objetivo.Text = ""; TextBox1.Text = ""; Area.SelectedIndex = 0; DropDownList2.SelectedIndex = 0; causa.Text = ""; eventos.Text = ""; consecuencia.Text = "";
            }
            else
            {
                if (checkearcodigo() == true)
                {
                    Response.Write("<script>window.alert('El registro de codigo ya existe,intentelo nuevamente');</script>");
                    objetivo.Text = ""; TextBox1.Text = ""; Area.SelectedIndex = 0; DropDownList2.SelectedIndex = 0; causa.Text = ""; eventos.Text = ""; consecuencia.Text = "";
                }
                else
                {
                    try
                    {
                        Ident_Riesgos_Especificos ident_Riesgos_Especificos = new Ident_Riesgos_Especificos();
                        ident_Riesgos_Especificos.ObjetivoProceso = this.objetivo.Text;
                        ident_Riesgos_Especificos.CodigoRiesgo = this.TextBox1.Text;
                        ident_Riesgos_Especificos.Area_de_riesgo_directo_o_indirecto = this.Area.Text;
                        ident_Riesgos_Especificos.Causa_específica = this.causaes.Text;
                        ident_Riesgos_Especificos.Dependencia_de_riesgo__directo_o_indirecto = this.DropDownList2.Text;
                        ident_Riesgos_Especificos.DescripcióndelaCausa = this.causa.Text;
                        ident_Riesgos_Especificos.DescripcióndelosEventos = this.eventos.Text;
                        ident_Riesgos_Especificos.DescripcióndelasConsecuencias = this.consecuencia.Text;
                        ident_Riesgos_Especificos.Fecha_de_identificación_del_riesgo = this.fecha1.Text;
                        de.Ident_Riesgos_Especificos.Add(ident_Riesgos_Especificos);
                        de.SaveChanges();
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Registro Existoso');window.location ='Especificos.aspx';",
                        true);
                    }
                    catch
                    {
                        Response.Write("<script>window.alert('No se agrego el registro, compruebe los datos nuevamente.');</script>");
                        objetivo.Text = ""; TextBox1.Text = ""; Area.SelectedIndex = 0; DropDownList2.SelectedIndex = 0; causa.Text = ""; eventos.Text = ""; consecuencia.Text = "";
                    }
                }
            }
        }

        public Boolean checkearcodigo()
        {
            Boolean fechavalida = false;
            string mycon = "workstation id=RiskManagementProject.mssql.somee.com;packet size=4096;user id=kennethalgr_SQLLogin_1;pwd=cuxvztfoig;data source=RiskManagementProject.mssql.somee.com;persist security info=False;initial catalog=RiskManagementProject";

            string myquery = "SELECT * FROM Ident_Riesgos_Especificos Where CodigoRiesgo='" + TextBox1.Text + "'";
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