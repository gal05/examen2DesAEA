using DemoGuerra;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion
{
    public partial class ListaProductosVendidos : System.Web.UI.Page
    {
        Datos data = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            data.CargarAnios(cboAnio, "examen2Anios");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cboAnio_SelectedIndexChanged(object sender, EventArgs e)
        {
            String anio = cboAnio.SelectedValue.ToString();

            data.CargarMes(cboMes, anio, "examen2MesesxAnio");
        }

        protected void cboMes_SelectedIndexChanged(object sender, EventArgs e)
        {
            String anio = cboAnio.SelectedValue.ToString();
            int mes = Convert.ToInt32(cboMes.SelectedValue);
            GridView1.DataSource = data.productosXanioXmes("examen2productosxmesxanio", anio, mes);
            GridView1.DataBind();
        }
    }
}