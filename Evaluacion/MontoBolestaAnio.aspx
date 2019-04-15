<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MontoBolestaAnio.aspx.cs" Inherits="Evaluacion.MontoBolestaAnio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Monto de boleta por anio</td>
            <td>
                <asp:DropDownList ID="cboAnio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboAnio_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="viewBoletasxAnios" runat="server" OnSelectedIndexChanged="viewBoletasxAnios_SelectedIndexChanged">
                </asp:GridView>
            </td>
            <td>
                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                Total</td>
        </tr>
    </table>
</asp:Content>
