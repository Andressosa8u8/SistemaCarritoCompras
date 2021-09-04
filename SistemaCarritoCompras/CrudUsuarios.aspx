<%@ Page Title="" Language="C#" MasterPageFile="~/CrudPageUsuario.Master" AutoEventWireup="true" CodeBehind="CrudUsuarios.aspx.cs" Inherits="SistemaCarritoCompras.CrudUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido2" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <span class="contact100-form-title">Formulario de usuarios
            </span>
            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">NOMBRES: </span>
                <asp:TextBox ID="txt_nom" placeholder="Ingrese el nombre..." runat="server" CssClass="input100"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">APELLIDOS: </span>
                <asp:TextBox ID="txt_ape" placeholder="Ingrese el nombre..." runat="server" CssClass="input100"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">CEDULA: </span>
                <asp:TextBox class="input100" CssClass="input100" ID="txt_ced" placeholder="Ingrese la cédula... " runat="server"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1" data-validate="Ej: El Pepe">
                <span class="label-input100">USUARIO: </span>
                <asp:TextBox CssClass="input100" ID="txt_usu" placeholder="Ingrese el usuario..." runat="server"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">CONTRASEÑA: </span>
                <asp:TextBox CssClass="input100" ID="txt_pass" placeholder="Ingrese la contraseña..." TextMode="Password" runat="server"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">DIRECCION: </span>
                <asp:TextBox CssClass="input100" ID="txt_dir" placeholder="Ingrese la dirección..." runat="server"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">EMAIL: </span>
                <asp:TextBox CssClass="input100" ID="txt_email" placeholder="Ingrese el email..." TextMode="Email" runat="server"></asp:TextBox>
            </div>

            <div class="wrap-input100 validate-input bg1">
                <span class="label-input100">TELEFONO: </span>
                <asp:TextBox CssClass="input100" ID="txt_tel" TextMode="Phone" runat="server"></asp:TextBox>
            </div>

            <div class="container-contact100-form-btn">
                <asp:Button class="contact100-form-btn" ID="btn_registrar" runat="server" OnClick="btn_registrar_Click" Text="Registrar" />
            </div>
            <div class="container-contact100-form-btn">
                <asp:Button class="contact100-form-btn" ID="btn_cancelar" runat="server" OnClick="btn_cancelar_Click" Text="Cancelar" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
