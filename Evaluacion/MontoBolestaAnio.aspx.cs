using DemoGuerra;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion
{
    public partial class MontoBolestaAnio : System.Web.UI.Page
    {
        Datos data = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                return;
            }
            data.CargarAnios(cboAnio, "examen2Anios");   

        }

        protected void viewBoletasxAnios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cboAnio_SelectedIndexChanged(object sender, EventArgs e)
        {
            String anio = cboAnio.SelectedValue;
            viewBoletasxAnios.DataSource = data.boletasPorAnio("examen2boletasxAnio", anio);
            viewBoletasxAnios.DataBind();

            double tot = 0;
            double total = 0;
            for (int i = 0; i < (viewBoletasxAnios.Rows.Count); i++)
            {
                tot = Convert.ToDouble(viewBoletasxAnios.Rows[i].Cells[6].Text.ToString());
                total = total + tot;
            }

            txtTotal.Text = total.ToString();
        }
    }
}