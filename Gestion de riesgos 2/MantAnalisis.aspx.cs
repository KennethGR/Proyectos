using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class MantAnalisis : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarAdministracion();
        }

        private void llenarAdministracion()
        {
            this.GridView1.DataSource = de.Evaluacion_y_Analisis.Select
                (adm => new
                {
                    cod = adm.CodigoRiesgo,
                    tipo = adm.Tipoderiesgo,
                    nivel1 = adm.NiveldeRiesgoInherente,
                    codigoact = adm.Codigo_Control_Actual,
                    nivelresidual1 = adm.NiveldeRiesgoResidual1,
                    prop = adm.Código_Control_Propuesto,
                    nivel2 = adm.Nivelderiesgoresidual2,
                }).ToList();
            this.GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldAdmin");
            Evaluacion_y_Analisis dics = de.Evaluacion_y_Analisis.Single(admi => admi.CodigoRiesgo.Equals(hd.Value));
            de.Evaluacion_y_Analisis.Remove(dics);
            de.SaveChanges();
            llenarAdministracion();
        }
    }
}