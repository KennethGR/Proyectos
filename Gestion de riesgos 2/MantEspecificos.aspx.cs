using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class MantEpecificos : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarEspecifico();
        }

        public void llenarEspecifico()
        {
            this.GridView1.DataSource = de.Ident_Riesgos_Especificos.Select
               (esp => new
               {
                   codriesgo = esp.CodigoRiesgo,
                   objetivoproceso = esp.ObjetivoProceso,
                   causafactor = esp.Causa_específica,
                   area = esp.Area_de_riesgo_directo_o_indirecto,
                   dependencia = esp.Dependencia_de_riesgo__directo_o_indirecto,
               }).ToList();
            this.GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldEsp");
            Ident_Riesgos_Especificos dics = de.Ident_Riesgos_Especificos.Single(especifico => especifico.CodigoRiesgo.Equals(hd.Value));
            de.Ident_Riesgos_Especificos.Remove(dics);
            de.SaveChanges();
            llenarEspecifico();
        }
    }
}