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
    public partial class AgregarRiesgoGeneral : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(codcausa.Text) || string.IsNullOrEmpty(causaa.Text) || string.IsNullOrEmpty(descrip.Text) || string.IsNullOrEmpty(cat.Text) || string.IsNullOrEmpty(subcat.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
            }
            else
            {
                if (checkearcodigo() == true)
                {
                    Response.Write("<script>window.alert('El registro de codigo ya existe,intentelo nuevamente');</script>");
                }
                else
                {
                    try
                    {
                        DiccionarioRiesgosEspecifico diccionarioRiesgosEspecifico = new DiccionarioRiesgosEspecifico();
                        diccionarioRiesgosEspecifico.Codigo = this.codcausa.Text;
                        diccionarioRiesgosEspecifico.Causa = this.causaa.Text;
                        diccionarioRiesgosEspecifico.Descripcion = this.descrip.Text;
                        diccionarioRiesgosEspecifico.Categoria = this.cat.Text;
                        diccionarioRiesgosEspecifico.SubCategoria = this.subcat.Text;
                        de.DiccionarioRiesgosEspecificos.Add(diccionarioRiesgosEspecifico);
                        de.SaveChanges();
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Registro Existoso');window.location ='MantDiccionario.aspx';",
                        true);
                    }
                    catch
                    {
                        Response.Write("<script>window.alert('No se agrego el registro, compruebe los datos nuevamente.');</script>");
                    }
                } 
            }    
        }

        public Boolean checkearcodigo()
        {
            Boolean fechavalida = false;
            string mycon = "workstation id=RiskManagementProject.mssql.somee.com;packet size=4096;user id=kennethalgr_SQLLogin_1;pwd=cuxvztfoig;data source=RiskManagementProject.mssql.somee.com;persist security info=False;initial catalog=RiskManagementProject";

            string myquery = "SELECT * FROM DiccionarioRiesgosEspecificos Where Codigo='" + codcausa.Text + "'";
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