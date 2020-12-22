using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class editaradmi : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cow = Request.QueryString["cod"];
                Administracion1 administracion = de.Administracion1.Single(esp => esp.Codigo.Equals(cow));
                this.codig.Text = administracion.Codigo;
                this.TextBox9.Text = administracion.Evento;
                this.Tipo.Text = administracion.Tipo_de_riesgo;
                this.Tolerancia.Text = administracion.Tolerancia_del_Riesgo;
                this.inherente1.Text = Convert.ToString(administracion.NiveldelRiesgo_inherente);
                this.residual1.Text = Convert.ToString(administracion.NiveldelRiesgoResidual1);
                this.afectacion.Text = administracion.Grado_de_afectación;
                this.Importancia.Text = administracion.Importancia_del_Objetivo_del_Proceso__actividades__tareas_;
                this.variacion.Text = Convert.ToString(administracion.Variacióndelniveldelriesgoconcontroles);
                this.costo.Text = administracion.Análisis_costo_beneficio;
                this.aceptabilidad.Text = administracion.Aceptabilidad_del_riesgo;
                this.resultado.Text = administracion.Resultado_de_la_evaluación;
                this.residual2.Text = Convert.ToString(administracion.NiveldelRiesgoresidual2);
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(codig.Text) || string.IsNullOrEmpty(TextBox9.Text) || string.IsNullOrEmpty(Tipo.Text) || string.IsNullOrEmpty(Tolerancia.Text) || string.IsNullOrEmpty(inherente1.Text) || string.IsNullOrEmpty(residual1.Text) || afectacion.SelectedValue.ToString() == "-Seleccione el codigo-" || Importancia.SelectedValue.ToString() == "-Seleccione el codigo-" || string.IsNullOrEmpty(variacion.Text) || string.IsNullOrEmpty(costo.Text) || string.IsNullOrEmpty(aceptabilidad.Text) || string.IsNullOrEmpty(resultado.Text) || string.IsNullOrEmpty(residual2.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
                Tipo.Text = "";
                Tolerancia.Text = "";
                resultado.Text = "";
                TextBox9.Text = "";
                inherente1.Text = "";
                residual1.Text = "";
                residual2.Text = "";
                variacion.Text = "";
            }
            else
            {
                try
                {
                    Administracion1 administracion = de.Administracion1.Single(Dic => Dic.Codigo.Equals(this.codig.Text));
                    administracion.Grado_de_afectación = this.afectacion.Text;
                    administracion.Importancia_del_Objetivo_del_Proceso__actividades__tareas_ = this.Importancia.Text;
                    administracion.Análisis_costo_beneficio = this.costo.Text;
                    administracion.Aceptabilidad_del_riesgo = this.aceptabilidad.Text;
                    de.SaveChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('Modificacion Exitosa');window.location ='MantAdministracion.aspx';",
                    true);
                }
                catch
                {
                    Response.Write("<script>window.alert('No se modifico el registro, compruebe los datos nuevamente.');</script>");
                }
            }
        }

        protected void codigo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}