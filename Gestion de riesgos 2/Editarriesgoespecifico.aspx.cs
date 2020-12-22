using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class Editarriesgoespecifico : System.Web.UI.Page
    {
        public GestionRiesgosEntities de = new GestionRiesgosEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                string cow = Request.QueryString["codriesgo"];
                Ident_Riesgos_Especificos ident_Riesgos_Especificos = de.Ident_Riesgos_Especificos.Single(esp => esp.CodigoRiesgo.Equals(cow));
                this.TextBox1.Text = ident_Riesgos_Especificos.CodigoRiesgo;
                this.objetivo.Text = ident_Riesgos_Especificos.ObjetivoProceso;
                this.causaes.Text = ident_Riesgos_Especificos.Causa_específica;
                this.Area.Text = ident_Riesgos_Especificos.Area_de_riesgo_directo_o_indirecto;
                this.DropDownList2.Text = ident_Riesgos_Especificos.Dependencia_de_riesgo__directo_o_indirecto;
                this.causa.Text = ident_Riesgos_Especificos.DescripcióndelaCausa;
                this.eventos.Text = ident_Riesgos_Especificos.DescripcióndelosEventos;
                this.consecuencia.Text = ident_Riesgos_Especificos.DescripcióndelasConsecuencias;
                this.fecha1.Text = ident_Riesgos_Especificos.Fecha_de_identificación_del_riesgo;
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(objetivo.Text) || string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(Area.Text) || string.IsNullOrEmpty(DropDownList2.Text) || string.IsNullOrEmpty(causa.Text) || string.IsNullOrEmpty(eventos.Text) || string.IsNullOrEmpty(consecuencia.Text) || string.IsNullOrEmpty(fecha1.Text))
            {
                Response.Write("<script>window.alert('No se admiten campos vacios, compruebe los campos nuevamente.');</script>");
                
            }
            else
            {
            try
            {
                Ident_Riesgos_Especificos ident_Riesgos_Especificos = de.Ident_Riesgos_Especificos.Single(Dic => Dic.CodigoRiesgo.Equals(this.TextBox1.Text));
               ident_Riesgos_Especificos.ObjetivoProceso = this.objetivo.Text;
                ident_Riesgos_Especificos.Causa_específica = this.causaes.Text;
                ident_Riesgos_Especificos.Area_de_riesgo_directo_o_indirecto = this.Area.Text;
                ident_Riesgos_Especificos.Dependencia_de_riesgo__directo_o_indirecto = this.DropDownList2.Text;
                ident_Riesgos_Especificos.DescripcióndelaCausa = this.causa.Text;
                ident_Riesgos_Especificos.DescripcióndelosEventos = this.eventos.Text;
                ident_Riesgos_Especificos.DescripcióndelasConsecuencias = this.consecuencia.Text;
                ident_Riesgos_Especificos.Fecha_de_identificación_del_riesgo = DateTime.Now.ToString("dd/MM/yyyy");
                de.SaveChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                     "alert",
                     "alert('Modificacion Exitosa');window.location ='MantEspecificos.aspx';",
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