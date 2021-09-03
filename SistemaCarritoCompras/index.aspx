<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SistemaCarritoCompras.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <span class="login100-form-title p-b-41" style="text-align: center; font-family: 'Brush Script MT'; font-size: xx-large">FOOD NOW
            </span>
            <div class="login100-form validate-form p-b-33 p-t-5">
                <!--<center>-->                
                <div class="wrap-input100 validate-input">
                     <asp:TextBox ID="txt_usu" runat="server" CssClass="input100" placeholder="Usuario"></asp:TextBox>
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                </div>

                <div class="wrap-input100 validate-input">
                    <asp:TextBox ID="txt_pass" runat="server" CssClass="input100" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                </div>
                    <br />
                <div class="container-login100-form-btn m-t-20">
                    <asp:Button ID="btn_ingresar" CssClass="login100-form-btn" runat="server" Text="Iniciar Sesion" OnClick="btn_ingresar_Click"/>
                </div>

                <div class="container-login100-form-btn m-t-30">
                    <a href="CRUDUSUARIOS.aspx" class="txt1" style="font-size: 15px; color: black;">REGISTRAR
                    </a>
                </div>
                <div class="container-login100-form-btn m-t-30">
                    <a href="LOGIN.aspx" class="txt1" style="font-size: 15px; color: black;">¿ Olvido la contraseña ?
                    </a>
                </div>
                <!--</center>-->
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
