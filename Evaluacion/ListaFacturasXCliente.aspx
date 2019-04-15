    <%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListaFacturasXCliente.aspx.cs" Inherits="Evaluacion.ListaFacturasXCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>FACTURAS POR CLIENTE</td>
            <td class="auto-style5">COD CLIENTE&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:DropDownList ID="cboCodClientes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboCodClientes_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="FacturasxClientes" runat="server" OnSelectedIndexChanged="FacturasxClientes_SelectedIndexChanged">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
