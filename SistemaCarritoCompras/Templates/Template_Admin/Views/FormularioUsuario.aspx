<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="FormularioUsuario.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.FormularioUsuario" %>
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
                    <h4>Formulario Usuario</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Nombres</label>
                        <asp:TextBox ID="txt_nombres" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Apellidos</label>
                        <asp:TextBox ID="txt_apellidos" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Cedula</label>
                        <asp:TextBox ID="txt_cedula" type="text" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <asp:TextBox ID="txt_usuario" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <asp:TextBox ID="txt_pass" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Dirección</label>
                        <asp:TextBox ID="txt_direccion" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="txt_correo" type="text" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <asp:TextBox ID="txt_telefono" type="text" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tipo de Usuario</label>
                        <asp:DropDownList ID="ddl_tusu" CssClass="form-control" runat="server"></asp:DropDownList>                        
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
