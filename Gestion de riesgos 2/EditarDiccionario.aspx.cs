using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{ 
    public partial class EditarDiccionario : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string cow = Request.QueryString["cod"];
                DiccionarioRiesgosEspecifico diccionarioRiesgosEspecifico = de.DiccionarioRiesgosEspecificos.Single(Diccionario => Diccionario.Codigo.Equals(cow));
                this.codcausa.Text = diccionarioRiesgosEspecifico.Codigo;
                this.causaa.Text = diccionarioRiesgosEspecifico.Causa;
                this.descrip.Text = diccionarioRiesgosEspecifico.Descripcion;
                this.cat.Text = diccionarioRiesgosEspecifico.Categoria;
                this.subcat.Text = diccionarioRiesgosEspecifico.SubCategoria;
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                DiccionarioRiesgosEspecifico diccionarioRiesgosEspecifico = de.DiccionarioRiesgosEspecificos.Single(Dic => Dic.Codigo.Equals(this.codcausa.Text));
                    diccionarioRiesgosEspecifico.Causa = this.causaa.Text;
                diccionarioRiesgosEspecifico.Descripcion = this.descrip.Text;
                diccionarioRiesgosEspecifico.Categoria = this.cat.Text;
                diccionarioRiesgosEspecifico.SubCategoria = this.subcat.Text;
                de.SaveChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                     "alert",
                     "alert('Modificacion Exitosa');window.location ='MantDiccionario.aspx';",
                     true);
            }
            catch  
            {
                Response.Write("<script>window.alert('No se modifico el registro, compruebe los datos nuevamente.');</script>");
            }
        }
    }
}