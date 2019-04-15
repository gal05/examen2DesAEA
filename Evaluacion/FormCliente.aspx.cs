using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DemoGuerra;

namespace Evaluacion
{
    

    public partial class FormCliente : System.Web.UI.Page
    {
        Datos data = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {
            DgvClientes.DataSource = data.ListadatosProcedimiento("examen2guerraListarClientes");
            DgvClientes.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        Cliente cli = new Cliente();
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            cli.IdCliente= txtCodigo.Text;
            cli.NombreCliente = txtNombre.Text;
            cli.FonoCliente = txtTelefono.Text;
            cli.EmailCliente = txtEmail.Text;
            cli.DirCliente = txtDireccion.Text;
            cli.LineaCreditoCliente = Convert.ToDouble(txtLineaCredito.Text);

            data.RegistrarCliente("examen2guerraInsert", cli);

            //MessageBox.Show("REGISTRO GUARDADO EXITOSAMENTE");
            DgvClientes.DataSource = data.ListadatosProcedimiento("examen2guerraListarClientes");

        }

        protected void DgvClientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            txtCodigo.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[1].Text;
            txtNombre.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[2].Text;
            txtTelefono.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[3].Text;
            txtEmail.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[4].Text;
            txtDireccion.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[5].Text;
            txtLineaCredito.Text= DgvClientes.Rows[e.NewSelectedIndex].Cells[6].Text;
        }
    }
}