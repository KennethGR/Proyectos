using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class Riesgo_Inherente : System.Web.UI.Page
    {
        SqlCommand cmd, cmd1, cmd2;
        public SqlConnection con = new SqlConnection(
        WebConfigurationManager.ConnectionStrings["GestionConnectionString3"].ConnectionString);
        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList2.Enabled = false;
        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.ToString() == "Especifico")
            {
                DropDownList2.Visible = true;
                DropDownList3.Visible = false;

                objetivo.Text = "";
                causa.Text = "";
                evento.Text = "";
                consecuencia.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList2.SelectedIndex = 0;
                DropDownList2.Enabled = true;
            }
            else
            {
                DropDownList2.Visible = false;
                DropDownList3.Visible = true;
                objetivo.Text = "";
                causa.Text = "";
                evento.Text = "";
                consecuencia.Text = "";
                DropDownList3.SelectedIndex = 0;
                DropDownList3.Enabled = true;
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Ident_Riesgos_Especificos where CodigoRiesgo='" + DropDownList2.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string ObjetivoProceso = (string)reader["ObjetivoProceso"].ToString();
                objetivo.Text = ObjetivoProceso;

                string DescripcióndelaCausa = (string)reader["DescripcióndelaCausa"].ToString();
                causa.Text = DescripcióndelaCausa;

                string DescripcióndelEvento = (string)reader["DescripcióndelosEventos"].ToString();
                evento.Text = DescripcióndelEvento;

                string DescripcióndelaConsecuencia = (string)reader["DescripcióndelasConsecuencias"].ToString();
                consecuencia.Text = Convert.ToString(DescripcióndelaConsecuencia);
            }
            reader.Close();
            con.Close();

            con.Open();
            cmd = new SqlCommand("SELECT * FROM Evaluacion_y_Analisis where CodigoRiesgo='" + DropDownList2.SelectedItem.ToString() + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader reader2;
            reader2 = cmd.ExecuteReader();
            while (reader2.Read())
            {
                string ObjetivoProceso = (string)reader2["DescripcionControlActual"].ToString();
                TextBox1.Text = ObjetivoProceso;
                string DescripcióndelaCausa = (string)reader2["Descripciondelcontrolpropuesto"].ToString();
                TextBox2.Text = DescripcióndelaCausa;
            }
            reader2.Close();
            con.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Ident_Riesgos_Generales where CodigodeRiesgo='" + DropDownList3.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string ObjetivoProceso = (string)reader["ObjetivoProceso"].ToString();
                objetivo.Text = ObjetivoProceso;

                string DescripcióndelaCausa = (string)reader["DescripcióndelaCausa"].ToString();
                causa.Text = DescripcióndelaCausa;

                string DescripcióndelEvento = (string)reader["DescripcióndelEvento"].ToString();
                evento.Text = DescripcióndelEvento;

                string DescripcióndelaConsecuencia = (string)reader["DescripcióndelaConsecuencia"].ToString();
                consecuencia.Text = Convert.ToString(DescripcióndelaConsecuencia);
            }
            reader.Close();
            con.Close();

            con.Open();
            cmd = new SqlCommand("SELECT * FROM Evaluacion_y_Analisis where CodigoRiesgo='" + DropDownList3.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            while (reader1.Read())
            {
                string ObjetivoProceso = (string)reader1["DescripcionControlActual"].ToString();
                TextBox1.Text = ObjetivoProceso;

                string DescripcióndelaCausa = (string)reader1["Descripciondelcontrolpropuesto"].ToString();
                TextBox2.Text = DescripcióndelaCausa;
            }
            con.Close();
        }
    }
}