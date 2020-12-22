using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class MantDiccionario : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarDiccionario();
        }

        private void llenarDiccionario()
        {
            this.GridViewDiccionario.DataSource = de.DiccionarioRiesgosEspecificos.Select
                (dic => new
                {
                    cod = dic.Codigo,
                    causa = dic.Causa,
                    Descrip = dic.Descripcion
                }).ToList();
            this.GridViewDiccionario.DataBind();
        }
        protected void GridViewDiccionario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void EliminarBoton_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldDic");
            DiccionarioRiesgosEspecifico dics = de.DiccionarioRiesgosEspecificos.Single(diccionario => diccionario.Codigo.Equals(hd.Value));
            de.DiccionarioRiesgosEspecificos.Remove(dics);
            de.SaveChanges();
            llenarDiccionario();
        }

        protected void LinkButtoneditar_Click(object sender, EventArgs e)
        {

        }
    }
}