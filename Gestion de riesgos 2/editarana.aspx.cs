using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class editarana : System.Web.UI.Page
    {
        GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cow = Request.QueryString["cod"];
                Evaluacion_y_Analisis administracion = de.Evaluacion_y_Analisis.Single(esp => esp.CodigoRiesgo.Equals(cow));
                this.codigo.Text = administracion.CodigoRiesgo;
                this.Tipo_Riesgoh.Text = administracion.Tipoderiesgo;
                this.Eventoh.Text = administracion.Evento;
                this.Probabilidadh.Text = Convert.ToString(administracion.Probabilidad);
                this.Impactoh.Text = Convert.ToString(administracion.Impacto);
                this.Nivel_Riesgo_InHerenteh.Text = Convert.ToString(administracion.NiveldeRiesgoInherente);
                this.Cod_Control_Actualh.Text = administracion.Codigo_Control_Actual;
                this.Descripcion_Control_Actualh.Text = administracion.DescripcionControlActual;
                this.Disminucion_Probabilidadh.Text = Convert.ToString(administracion.Disminución_Probabilidad);
                this.Disminucion_Impactoh.Text = Convert.ToString(administracion.Disminución_Impacto);
                this.Probabilidad_Control_Actualh.Text = Convert.ToString(administracion.Probabilidad_con_Control_Actual);
                this.Impacto_Control_Actualh.Text = Convert.ToString(administracion.Impacto_con_Control_Actual);
                this.Nivel_Riesgo_Residual_1h.Text = Convert.ToString(administracion.NiveldeRiesgoResidual1);

                this.Cod_Control_Propuestoh.Text = administracion.Código_Control_Propuesto;
                this.Descripcion_Control_Propuestoh.Text = administracion.Descripciondelcontrolpropuesto;
                this.Disminucion_Probabilidad1h.Text = Convert.ToString(administracion.Disminución_Probabilidad1);
                this.Disminucion_Impacto1h.Text = Convert.ToString(administracion.Disminución_Impacto1);
                this.Probabilidad_Control_Propuestoh.Text = Convert.ToString(administracion.Probabilidad_con_control_Propuesto);
                this.Impacto1h.Text = Convert.ToString(administracion.ImpactoControlPropuesto);
                this.Nivel_Riesgo_Residual_2h.Text = Convert.ToString(administracion.Nivelderiesgoresidual2);
            }
        }

        protected void Disminucion_Impactoh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Impactoh.SelectedValue.ToString() == ">> Seleccionar <<")
            {
                Response.Write("<script>window.alert('Debe seleccionar primero el campo de impacto en la evaluación del riesgo');</script>");
                Disminucion_Impactoh.SelectedIndex = 0;
            }
            else
            {
                if (Convert.ToInt32(Impactoh.SelectedItem.Text) < Convert.ToInt32(Disminucion_Impactoh.SelectedItem.Text))
                {
                    Response.Write("<script>window.alert('Disminucion de impacto de control actual no debe ser mayor al impacto en la vista evaluación del riesgo');</script>");

                    Disminucion_Impactoh.SelectedIndex = 0;
                    Impacto_Control_Actualh.Text = "";
                    Nivel_Riesgo_Residual_1h.Text = "";
                }
                else
                {
                    int ImpactoControlActual = Convert.ToInt32(Impactoh.SelectedItem.Text);
                    int DisminucionImpactoProp = Convert.ToInt32(Disminucion_Impactoh.SelectedItem.Text);
                    int impactopropuesto = ImpactoControlActual - DisminucionImpactoProp;
                    Impacto_Control_Actualh.Text = Convert.ToString(impactopropuesto);

                    double impactocontrolactual = Convert.ToDouble(Probabilidad_Control_Actualh.Text);
                    double Impacto = Convert.ToDouble(Impacto_Control_Actualh.Text);
                    double Resultado = (impactocontrolactual / 100) * Impacto;
                    Nivel_Riesgo_Residual_1h.Text = Convert.ToString(Resultado);
                }
            }
        }

        protected void Disminucion_Probabilidadh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Probabilidadh.SelectedValue.ToString() == ">> Seleccionar % <<")
            {
                Response.Write("<script>window.alert('Debe seleccionar primero el campo de probabilidad en la evaluación del riesgo');</script>");
                Disminucion_Probabilidadh.SelectedIndex = 0;
                Probabilidad_Control_Actualh.Text = "";
            }
            else
            {
                if (Convert.ToInt32(Disminucion_Probabilidadh.SelectedItem.Text) > Convert.ToInt32(Probabilidadh.SelectedItem.Text))
                {
                    Response.Write("<script>window.alert('La disminución de probabilidad en la evaluacion de control actual no debe ser mayor a la probabilidad en la evaluación del riesgo');</script>");
                    Disminucion_Probabilidadh.SelectedIndex = 0;
                    Probabilidad_Control_Actualh.Text = "";

                }
                else
                {
                    int ProbabilidadEv = Convert.ToInt32(Probabilidadh.SelectedItem.Text);
                    int Dis_Probabilidad = Convert.ToInt32(Disminucion_Probabilidadh.SelectedItem.Text);
                    int probabilidadcontrolactual = ProbabilidadEv - Dis_Probabilidad;
                    Probabilidad_Control_Actualh.Text = Convert.ToString(probabilidadcontrolactual);
                }

            }
        }

        protected void Disminucion_Impacto1h_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Impacto_Control_Actualh.Text == "")
            {
                Response.Write("<script>window.alert('Debe seleccionar primero el campo de disminucion de impacto en la evaluación de los controles actuales del riesgo y el campo de impacto en la evaluación del riesgo');</script>");
                Disminucion_Impacto1h.SelectedIndex = 0;

            }
            else
            {
                if (Convert.ToInt32(Impacto_Control_Actualh.Text) < Convert.ToInt32(Disminucion_Impacto1h.SelectedItem.Text))
                {
                    Response.Write("<script>window.alert('La disminución de impacto en la evaluacion de control propuesto no debe ser mayor al impacto control actual');</script>");
                    Disminucion_Impacto1h.SelectedIndex = 0;
                }
                else
                {
                    int ImpactoControlpropuesto = Convert.ToInt32(Impacto_Control_Actualh.Text);
                    int DisminucionImpactoProp = Convert.ToInt32(Disminucion_Impacto1h.SelectedItem.Text);
                    int impactopropuesto = ImpactoControlpropuesto - DisminucionImpactoProp;
                    Impacto1h.Text = Convert.ToString(impactopropuesto);

                    double impactocontrolactual = Convert.ToDouble(Probabilidad_Control_Propuestoh.Text);
                    double Impacto = Convert.ToDouble(Impacto1h.Text);
                    double Resultado = (impactocontrolactual / 100) * Impacto;
                    Nivel_Riesgo_Residual_2h.Text = Convert.ToString(Resultado);
                }
            }
        }

        protected void Disminucion_Probabilidad1h_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Probabilidad_Control_Actualh.Text == "")
            {
                Response.Write("<script>window.alert('El valor de la probabilidad con control actual esta vacio debe seleccionar la probabilidad y la disminucion del control actual');</script>");
                Disminucion_Probabilidad1h.SelectedIndex = 0;
            }
            else
            {
                if (Convert.ToInt32(Probabilidad_Control_Actualh.Text) < Convert.ToInt32(Disminucion_Probabilidad1h.SelectedItem.Text))
                {
                    Response.Write("<script>window.alert('El valor de la probabilidad con control actual debe ser mayor a la disminucion de la probabilidad');</script>");
                    Disminucion_Probabilidad1h.SelectedIndex = 0;

                }
                else
                {
                    int ProbabilidadEv = Convert.ToInt32(Probabilidad_Control_Actualh.Text);
                    int Dis_Probabilidad = Convert.ToInt32(Disminucion_Probabilidad1h.SelectedItem.Text);
                    int probabilidadcontrolpropuesto = ProbabilidadEv - Dis_Probabilidad;
                    Probabilidad_Control_Propuestoh.Text = Convert.ToString(probabilidadcontrolpropuesto);
                }
            }
        }

        protected void Impactoh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Probabilidadh.SelectedValue.ToString() == ">> Seleccionar % <<")
            {
                Response.Write("<script>window.alert('El valor de la probabilidad en la evaluacion del riesgo esta vacio debe seleccionar la probabilidad primero');</script>");
                Impactoh.SelectedIndex = 0;
            }
            else
            {
                double Probabilidad = Convert.ToDouble(Probabilidadh.SelectedItem.Text);
                double Impacto = Convert.ToDouble(Impactoh.SelectedItem.Text);
                double Resultado = Convert.ToDouble(Probabilidad) * Convert.ToDouble(Impacto) / 100;
                Nivel_Riesgo_InHerenteh.Text = Convert.ToString(Resultado);
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tipo_Riesgoh.SelectedValue.ToString() == ">> Seleccione <<" || string.IsNullOrEmpty(codigo.Text) || string.IsNullOrEmpty(Eventoh.Text) || Probabilidadh.SelectedValue.ToString() == ">> Seleccionar % <<" || Impactoh.SelectedValue.ToString() == ">> Seleccionar <<" || string.IsNullOrEmpty(Nivel_Riesgo_InHerenteh.Text) || string.IsNullOrEmpty(Cod_Control_Actualh.Text) || string.IsNullOrEmpty(Descripcion_Control_Actualh.Text) || Disminucion_Probabilidadh.SelectedValue.ToString() == ">> Seleccionar % <<" || Disminucion_Impactoh.SelectedValue.ToString() == ">> Seleccionar % <<" || string.IsNullOrEmpty(Probabilidad_Control_Actualh.Text) || string.IsNullOrEmpty(Impacto_Control_Actualh.Text) || string.IsNullOrEmpty(Nivel_Riesgo_Residual_1h.Text) || string.IsNullOrEmpty(Cod_Control_Propuestoh.Text) || string.IsNullOrEmpty(Descripcion_Control_Propuestoh.Text) || Disminucion_Probabilidad1h.SelectedValue.ToString() == ">> Seleccionar % <<" || Disminucion_Impacto1h.SelectedValue.ToString() == ">> Seleccionar % <<" || string.IsNullOrEmpty(Probabilidad_Control_Propuestoh.Text) || string.IsNullOrEmpty(Nivel_Riesgo_Residual_2h.Text))
                {
                    Response.Write("<script>window.alert('No se admiten campos vacíos,compruebe nuevamente');</script>");
                }
                else
                {
                    Evaluacion_y_Analisis analisis = de.Evaluacion_y_Analisis.Single(Dic => Dic.CodigoRiesgo.Equals(this.codigo.Text));
                    analisis.Evento = this.Eventoh.Text;
                    analisis.Probabilidad = Convert.ToInt32(this.Probabilidadh.Text);
                    analisis.Impacto = Convert.ToInt32(this.Impactoh.Text);
                    analisis.NiveldeRiesgoInherente = Convert.ToDouble(this.Nivel_Riesgo_InHerenteh.Text);
                    analisis.Codigo_Control_Actual = this.Cod_Control_Actualh.Text;
                    analisis.DescripcionControlActual = this.Descripcion_Control_Actualh.Text;
                    analisis.Disminución_Probabilidad = Convert.ToInt32(this.Disminucion_Probabilidadh.Text);
                    analisis.Disminución_Impacto = Convert.ToInt32(this.Disminucion_Impactoh.Text);
                    analisis.Probabilidad_con_Control_Actual = Convert.ToInt32(this.Probabilidad_Control_Actualh.Text);
                    analisis.Impacto_con_Control_Actual = Convert.ToInt32(this.Impacto_Control_Actualh.Text);
                    analisis.NiveldeRiesgoResidual1 = Convert.ToDouble(this.Nivel_Riesgo_Residual_1h.Text);
                    analisis.Código_Control_Propuesto = this.Cod_Control_Propuestoh.Text;
                    analisis.Descripciondelcontrolpropuesto = this.Descripcion_Control_Propuestoh.Text;
                    analisis.Disminución_Probabilidad1 = Convert.ToInt32(this.Disminucion_Probabilidad1h.Text);
                    analisis.Disminución_Impacto1 = Convert.ToInt32(this.Disminucion_Impacto1h.Text);
                    analisis.Probabilidad_con_control_Propuesto = Convert.ToInt32(this.Probabilidad_Control_Actualh.Text);
                    analisis.ImpactoControlPropuesto = Convert.ToInt32(this.Impacto1h.Text);
                    analisis.Nivelderiesgoresidual2 = Convert.ToDouble(this.Nivel_Riesgo_Residual_2h.Text);
                    de.Evaluacion_y_Analisis.Add(analisis);
                    de.SaveChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('Modificacion Exitosa');window.location ='MantAnalisis.aspx';",
                    true);
                }
            }
            catch
            {
                Response.Write("<script>window.alert('No se agrego el registro, compruebe los datos nuevamente.');</script>");
            }
        }
    }
}