<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="FormularioPedido.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.FormularioPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="card">
                <div class="card-header">
                    <h4>Formulario Pedido</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Cantidad</label>
                        <asp:TextBox ID="txt_cantidad" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <asp:TextBox ID="txt_precio" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Precio Total</label>
                        <asp:TextBox ID="txt_precio_total" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nombre del Producto</label>
                        <asp:DropDownList ID="ddl_producto" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Cedula del Usuario</label>
                        <asp:DropDownList ID="ddl_usuario" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Cancelar" CssClass="btn btn-outline-secondary btn-fw" OnClick="btn_Cancelar_Click" runat="server" Text="Cancelar" />
                    <asp:Button ID="btn_Modificar" CssClass="btn btn-primary" runat="server" OnClick="btn_Modificar_Click" Text="Modificar" Visible="False" />
                    <asp:Button ID="btn_Guardar" CssClass="btn btn-primary" runat="server" OnClick="btn_Guardar_Click" Text="Guardar" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
