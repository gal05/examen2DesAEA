using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DemoGuerra;
namespace Evaluacion

{
    public partial class ListaFacturasXCliente : System.Web.UI.Page
    {
        Datos data = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == true)
            {
                return;
            }
            data.CargarLista(cboCodClientes, "examen2CodCliente");

        }

        protected void FacturasxClientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cboCodClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string iddd = cboCodClientes.SelectedValue.ToString();
        
            FacturasxClientes.DataSource = data.facturaPorCliente("examen2facXcliente", iddd);
            FacturasxClientes.DataBind();

        }
    }
}