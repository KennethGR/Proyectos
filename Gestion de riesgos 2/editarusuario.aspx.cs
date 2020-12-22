using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class editarusuario : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cow = Request.QueryString["fun"];
                Usuario administracion = de.Usuarios.Single(esp => esp.FuncionarioResponsable.Equals(cow));
                this.codcausa.Text = administracion.FuncionarioResponsable;
                this.DropDownList1.Text = administracion.AreadeAplicación;
                this.DropDownList2.Text = administracion.DependenciaoCarrera;
                this.cat.Text = administracion.Email;
                this.subcat.Text = administracion.Contraseña;
                this.DropDownList3.Text = administracion.Rol;
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(codcausa.Text) || DropDownList1.SelectedValue.ToString() == "-Seleccione el codigo-" || DropDownList2.SelectedValue.ToString() == "-Seleccione el codigo-" || string.IsNullOrEmpty(cat.Text) || string.IsNullOrEmpty(subcat.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
            }
            else
            {
                try
                {
                    Usuario administracion = de.Usuarios.Single(Dic => Dic.FuncionarioResponsable.Equals(this.codcausa.Text));
                    administracion.AreadeAplicación = this.DropDownList1.Text;
                    administracion.DependenciaoCarrera = this.DropDownList2.Text;
                    administracion.Email = this.cat.Text;
                    administracion.Contraseña = this.subcat.Text;
                    administracion.Rol = this.DropDownList3.Text;
                    de.SaveChanges();
                    Response.Redirect("MantUsuarios.aspx");
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                   "alert",
                   "alert('Modificacion Exitosa');window.location ='MantUsuarios.aspx';",
                   true);
                }
                catch
                {
                    Response.Write("<script>window.alert('No se modifico el registro, compruebe los datos nuevamente.');</script>");
                }
            }
        }
    }
}