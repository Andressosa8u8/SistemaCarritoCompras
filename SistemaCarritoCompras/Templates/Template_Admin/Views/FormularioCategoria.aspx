﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="FormularioCategoria.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.FormularioCategoria" %>
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
                    <h4>Formulario Categoria</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Nombre de la Categoria</label>
                        <asp:TextBox ID="txt_nomCategoria" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <asp:TextBox ID="txt_estado" type="text" CssClass="form-control" runat="server"></asp:TextBox>
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
