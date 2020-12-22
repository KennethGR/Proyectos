using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class MantGenerales : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarGeneral();
        }

        public void llenarGeneral()
        {
            this.GridView1.DataSource = de.Ident_Riesgos_Generales.Select
               (gen => new
               {
                   codriesgo = gen.CodigodeRiesgo,
                   objetivoproceso = gen.ObjetivoProceso,
                   codigocausa = gen.CodigoCausa,
                   causafactor = gen.CausaFactor,
                   categoria = gen.Categoría__del_Factor,
                   subcat = gen.SubCategoría_del_Factor,
               }).ToList();
            this.GridView1.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldGen");
            Ident_Riesgos_Generales dics = de.Ident_Riesgos_Generales.Single(diccionario => diccionario.CodigodeRiesgo.Equals(hd.Value));
            de.Ident_Riesgos_Generales.Remove(dics);
            de.SaveChanges();
            llenarGeneral();
        }
    }
}