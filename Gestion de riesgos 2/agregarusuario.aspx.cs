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
    public partial class agregarusuario : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(codcausa.Text) || DropDownList1.SelectedValue.ToString() == "-Seleccione el codigo-" || DropDownList2.SelectedValue.ToString() == "- Seleccione el codigo-" || string.IsNullOrEmpty(cat.Text) || string.IsNullOrEmpty(subcat.Text) || DropDownList3.SelectedValue.ToString() == "- Seleccione el codigo-")
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
            }
            else
            {
                if (checkearcodigo() == true)
                {
                    Response.Write("<script>window.alert('El registro ya existe,intentelo nuevamente');</script>");
                }
                else
                {
                    try
                    {
                        Usuario usuario = new Usuario();
                        usuario.FuncionarioResponsable = this.codcausa.Text;
                        usuario.AreadeAplicación = this.DropDownList1.Text;
                        usuario.DependenciaoCarrera = this.DropDownList2.Text;
                        usuario.Email = this.cat.Text;
                        usuario.Contraseña = this.subcat.Text;
                        usuario.Rol = this.DropDownList3.Text;
                        de.Usuarios.Add(usuario);
                        de.SaveChanges();
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Registro Existoso');window.location ='MantUsuarios.aspx';",
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

            string myquery = "SELECT * FROM Usuarios Where FuncionarioResponsable='" + codcausa.Text + "'";
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