using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class MantAdministracion : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                llenarAdministracion();
        }

        private void llenarAdministracion()
        {
            this.GridView1.DataSource = de.Administracion1.Select
                (adm => new
                {
                    cod = adm.Codigo,
                    event1 = adm.Evento,
                    tipo = adm.Tipo_de_riesgo,
                    tolerancia = adm.Tolerancia_del_Riesgo,
                    nivel1 = adm.NiveldelRiesgo_inherente,
                    nivel2 = adm.NiveldelRiesgoResidual1,
                    nivel3 = adm.NiveldelRiesgoresidual2,
                }).ToList();
            this.GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldAdmin");
            Administracion1 dics = de.Administracion1.Single(admi => admi.Codigo.Equals(hd.Value));
            de.Administracion1.Remove(dics);
            de.SaveChanges();
            llenarAdministracion();
        }
    }
}