using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_de_riesgos_2
{
    public partial class index : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["GestionConnectionString3"].ConnectionString;
        string str, Email, Contraseña;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Ingresar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "Select * from Usuarios";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

               Email = dt.Rows[i]["Email"].ToString();

               Contraseña = dt.Rows[i]["Contraseña"].ToString();

                if (Email == email1.Text && Contraseña == contraseña1.Text)
                {

                    Session["Email"] = Email;

                    if (dt.Rows[i]["Rol"].ToString() == "Administrador")
                    {
                        Response.Write("<script>window.alert('Registro correcto como administrador');</script>");
                        Response.Redirect("MantAdministracion.aspx");
                    }
                    else if (dt.Rows[i]["Rol"].ToString() == "Usuario")
                    {
                        Response.Write("<script>window.alert('Registro correcto como usuario');</script>");
                        Response.Redirect("DiccionarioG.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>window.alert('El email o la contraseña son incorrectos.');</script>");
                }
            }
        }
    }
}