using DemoGuerra;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Evaluacion
{
    public partial class ListaArticulos : System.Web.UI.Page
    {
        Datos data = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataSource = data.ListadatosProcedimiento("examen2listarArticulos");
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
}