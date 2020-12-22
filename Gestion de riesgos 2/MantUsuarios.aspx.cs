using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class Usuarios : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarGeneral();
        }

        public void llenarGeneral()
        {
            this.GridViewDiccionario.DataSource = de.Usuarios.Select
               (gen => new
               {
                   fun = gen.FuncionarioResponsable,
                   area = gen.AreadeAplicación,
                   dependen = gen.DependenciaoCarrera,
                   email = gen.Email,
                   rol = gen.Rol,
               }).ToList();
            this.GridViewDiccionario.DataBind();
        }

        protected void EliminarBoton_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldGen");
            Usuario dics = de.Usuarios.Single(diccionario => diccionario.FuncionarioResponsable.Equals(hd.Value));
            de.Usuarios.Remove(dics);
            de.SaveChanges();
            llenarGeneral();
        }

        protected void GridViewDiccionario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}