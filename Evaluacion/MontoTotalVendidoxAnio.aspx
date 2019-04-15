<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MontoTotalVendidoxAnio.aspx.cs" Inherits="Evaluacion.MontoTotalVendidoxAnio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Monto total vendido por venderores segun año</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="theLast" runat="server">
                </asp:GridView>
            </td>
            <td class="auto-style5">
                <table class="auto-style1">
                    <tr>
                        <td>anio</td>
                        <td>
                            <asp:DropDownList ID="cboAnio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboAnio_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Vendedor</td>
                        <td>
                            <asp:DropDownList ID="cboVendedor" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="buscar" />
            </td>
        </tr>
    </table>
</asp:Content>
