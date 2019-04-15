<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListaProductosVendidos.aspx.cs" Inherits="Evaluacion.ListaProductosVendidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Lista de productos vendidos por año y mes</td>
            <td>Año&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="cboAnio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboAnio_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Mes&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="cboMes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboMes_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
