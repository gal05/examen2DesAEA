<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="FormCliente.aspx.cs" Inherits="Evaluacion.FormCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 350px;
        }
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
            height: 139px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="height: 279px">
        <tr>
            <td style="text-align: center">Mantenimiento de Clientes</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">CODIGO</td>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtCodigo" runat="server" style="text-align: left" Width="216px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">NOMBRE</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtNombre" runat="server" style="text-align: left" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">TELEFONO</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtTelefono" runat="server" style="text-align: left" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">EMAIL</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtEmail" runat="server" style="text-align: left" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">DIRECCION</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtDireccion" runat="server" style="text-align: left" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="text-align: right">LINEA DE CREDITO</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtLineaCredito" runat="server" style="text-align: left" Width="216px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
                                    </td>
                                    <td>
                            <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:GridView ID="DgvClientes" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True" OnSelectedIndexChanging="DgvClientes_SelectedIndexChanging">
                </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
