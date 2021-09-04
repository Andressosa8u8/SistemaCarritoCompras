<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Productos</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Productos</code>
                                    </p>
                                </div>
                                <div class="col-3" align="right">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Producto" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <asp:GridView ID="grvProductos" AutoGenerateColumns="false" Width="100%" CssClass="table table-hover text-center" OnRowCommand="grvProductos_RowCommand" GridLines="None" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="Codigo">
                                    <ItemTemplate>
                                        <asp:Label ID="producto_id" runat="server" Text='<%#Eval("pro_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre del Producto">
                                    <ItemTemplate>
                                        <asp:Label ID="nombre" runat="server" Text='<%#Eval("pro_nombre")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precio del Producto">
                                    <ItemTemplate>
                                        <asp:Label ID="precio" runat="server" Text='<%#Eval("pro_precio")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Descripción del Producto">
                                    <ItemTemplate>
                                        <asp:Label ID="descripcion" runat="server" Text='<%#Eval("pro_descripcion")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ruta de Imagen">
                                    <ItemTemplate>
                                        <asp:Image ID="imagen" runat="server" ImageUrl='<%# "~/Templates/Images/" + Eval("pro_imagen") %>' />
                                        <%--<asp:Label ID="imagen" runat="server" Text='<%# "~/Template/Images/"+Eval("pro_imagen") %>'></asp:Label>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo de la Categoria">
                                    <ItemTemplate>
                                        <asp:Label ID="categoria_id" runat="server" Text='<%#Eval("cat_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo del Proveedor">
                                    <ItemTemplate>
                                        <asp:Label ID="proveedor_id" runat="server" Text='<%#Eval("prov_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Label ID="estado" runat="server" Text='<%#Eval("pro_estado")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("pro_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("pro_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
