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
    
    public partial class Editaridentgeneral : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        public SqlConnection con = new SqlConnection(
         WebConfigurationManager.ConnectionStrings["GestionRiesgosEntities"].ConnectionString);
         SqlCommand cmd;
         string Categoria;
    int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cow = Request.QueryString["codriesgo"];
                Ident_Riesgos_Generales ident_Riesgos_Generales = de.Ident_Riesgos_Generales.Single(General => General.CodigodeRiesgo.Equals(cow));
                this.codi.Text = ident_Riesgos_Generales.CodigodeRiesgo;
                this.objetivo.Text = ident_Riesgos_Generales.ObjetivoProceso;
                this.DropDownList1.Text = ident_Riesgos_Generales.CodigoCausa;
                this.TextBox1.Text = ident_Riesgos_Generales.CausaFactor;
                this.TextBox2.Text = ident_Riesgos_Generales.Categoría__del_Factor;
                this.TextBox3.Text = ident_Riesgos_Generales.SubCategoría_del_Factor;
                this.Definicion.Text = ident_Riesgos_Generales.Descripcion;
                this.TextBox4.Text = ident_Riesgos_Generales.Fuente;
                this.Causa.Text = ident_Riesgos_Generales.DescripcióndelaCausa;
                this.eventos.Text = ident_Riesgos_Generales.DescripcióndelEvento;
                this.consecuencia.Text = ident_Riesgos_Generales.DescripcióndelaConsecuencia;
                this.fecha.Text = ident_Riesgos_Generales.Fecha_de_identificación_del_riesgo;
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(objetivo.Text) || string.IsNullOrEmpty(codi.Text) || string.IsNullOrEmpty(DropDownList1.Text) || string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(Definicion.Text) || string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(Causa.Text) || string.IsNullOrEmpty(eventos.Text) || string.IsNullOrEmpty(consecuencia.Text) || string.IsNullOrEmpty(fecha.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
            }
            else
            {
                    try
                    {
                        Ident_Riesgos_Generales ident_Riesgos_Generales = de.Ident_Riesgos_Generales.Single(Dic => Dic.CodigodeRiesgo.Equals(this.codi.Text));
                        ident_Riesgos_Generales.ObjetivoProceso = this.objetivo.Text;
                        ident_Riesgos_Generales.CodigoCausa = this.DropDownList1.Text;
                        ident_Riesgos_Generales.CausaFactor = this.TextBox1.Text;
                        ident_Riesgos_Generales.Categoría__del_Factor = this.TextBox2.Text;
                        ident_Riesgos_Generales.SubCategoría_del_Factor = this.TextBox3.Text;
                        ident_Riesgos_Generales.Descripcion = this.Definicion.Text;
                        ident_Riesgos_Generales.Fuente = this.TextBox4.Text;
                        ident_Riesgos_Generales.DescripcióndelaCausa = this.Causa.Text;
                        ident_Riesgos_Generales.DescripcióndelEvento = this.eventos.Text;
                        ident_Riesgos_Generales.DescripcióndelaConsecuencia = this.consecuencia.Text;
                        ident_Riesgos_Generales.Fecha_de_identificación_del_riesgo = DateTime.Now.ToString("dd/MM/yyyy");
                        de.SaveChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                     "alert",
                     "alert('Modificacion Exitosa');window.location ='MantGenerales.aspx';",
                     true);
                }
                    catch
                    {
                        Response.Write("<script>window.alert('No se modifico el registro, compruebe los datos nuevamente.');</script>");
                    }
            }
        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd = new SqlCommand("SELECT * FROM DiccionarioRiesgosEspecificos where Codigo='" + DropDownList1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr1;
            dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                string causaE = (string)dr1["Causa"].ToString();
                TextBox1.Text = causaE;

                string descrip = (string)dr1["Descripcion"].ToString();
                Definicion.Text = descrip;

                string Categoria = (string)dr1["Categoria"].ToString();
                TextBox2.Text = Categoria;

                string SubCategoria = (string)dr1["SubCategoria"].ToString();
                TextBox3.Text = SubCategoria;
            }
            con.Close();


            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT Categoria FROM DiccionarioRiesgosEspecificos";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                Categoria = dt.Rows[i]["Categoria"].ToString();
                if (dt.Rows[i]["Categoria"].ToString() == "Riesgos de entorno")
                {
                    TextBox4.Text = "Externa";
                }
                else if (dt.Rows[i]["Categoria"].ToString() == "riesgos de entorno")
                {
                    TextBox4.Text = "Externa";
                }
                else if (dt.Rows[i]["Categoria"].ToString() == "Riesgos de Entorno")
                {
                    TextBox4.Text = "Externa";
                }
                else
                {
                    TextBox4.Text = "Interna";
                }
            }
            con.Close();

            
        }
    }
}