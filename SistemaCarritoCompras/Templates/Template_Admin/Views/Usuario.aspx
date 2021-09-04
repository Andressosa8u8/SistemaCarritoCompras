<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Usuarios</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Usuarios</code>
                                    </p>
                                </div>
                                <div class="col-3" align="left">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Usuarios" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="table-responsive">
                            <asp:GridView ID="grvUsuarios" AutoGenerateColumns="False" CssClass="table table-hover text-center" OnRowCommand="grvUsuarios_RowCommand" GridLines="None" Width="100%" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="Codigo">
                                        <ItemTemplate>
                                            <asp:Label ID="usu_id" runat="server" Text='<%#Eval("usu_id")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombres">
                                        <ItemTemplate>
                                            <asp:Label ID="nombres" runat="server" Text='<%#Eval("usu_nombres")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Apellidos">
                                        <ItemTemplate>
                                            <asp:Label ID="apellidos" runat="server" Text='<%#Eval("usu_apellidos")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cedula">
                                        <ItemTemplate>
                                            <asp:Label ID="cedula" runat="server" Text='<%#Eval("usu_cedula")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Usuario">
                                        <ItemTemplate>
                                            <asp:Label ID="nomlogin" runat="server" Text='<%#Eval("usu_nomlogin")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Contraseña">
                                        <ItemTemplate>
                                            <asp:Label ID="pass" runat="server" Text='<%#Eval("usu_password")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Dirección">
                                        <ItemTemplate>
                                            <asp:Label ID="direccion" runat="server" Text='<%#Eval("usu_direccion")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Correo">
                                        <ItemTemplate>
                                            <asp:Label ID="correo" runat="server" Text='<%#Eval("usu_correo")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Telefono">
                                        <ItemTemplate>
                                            <asp:Label ID="telefono" runat="server" Text='<%#Eval("usu_telefono")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tipo de Usuario">
                                        <ItemTemplate>
                                            <asp:Label ID="tusu_id" runat="server" Text='<%#Eval("tusu_id")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Estado">
                                        <ItemTemplate>
                                            <asp:Label ID="estado" runat="server" Text='<%#Eval("usu_estado")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("usu_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("usu_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
</asp:Content>
