using DemoGuerra;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion
{
    public partial class MontoTotalVendidoxAnio : System.Web.UI.Page
    {
        Datos data = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            data.CargarAnios(cboAnio, "examen2Anios");
            data.CargarVendedor(cboVendedor, "examen2Vendedores");
        }

        protected void cboAnio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string anio = cboAnio.SelectedValue.ToString();
            int vendedor = Convert.ToInt32(cboVendedor.SelectedValue.ToString());
            theLast.DataSource= data.TotalVendidoXAnio(anio, vendedor, "examen2lasCuestion");
            theLast.DataBind();
        }
    }
}