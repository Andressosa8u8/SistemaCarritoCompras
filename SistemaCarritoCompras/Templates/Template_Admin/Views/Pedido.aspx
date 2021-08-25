<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Admin/Views/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="Pedido.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.Pedido" %>

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
                        <h4 class="card-title">Pedidos</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Pedidos</code>
                                    </p>
                                </div>
                                <div class="col-3" align="right">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Pedido" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <asp:GridView ID="grvPedidos" AutoGenerateColumns="false" Width="100%" CssClass="table table-hover text-center" OnRowCommand="grvPedidos_RowCommand" GridLines="None" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="Codigo">
                                    <ItemTemplate>
                                        <asp:Label ID="pedido_id" runat="server" Text='<%#Eval("ped_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad del Producto">
                                    <ItemTemplate>
                                        <asp:Label ID="cantidad" runat="server" Text='<%#Eval("ped_cantidad")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precio Unitario">
                                    <ItemTemplate>
                                        <asp:Label ID="precio" runat="server" Text='<%#Eval("ped_precio")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precio Total">
                                    <ItemTemplate>
                                        <asp:Label ID="total" runat="server" Text='<%#Eval("ped_precioTotal")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo del Producto">
                                    <ItemTemplate>
                                        <asp:Label ID="producto_id" runat="server" Text='<%#Eval("pro_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo del Usuario">
                                    <ItemTemplate>
                                        <asp:Label ID="usuario_id" runat="server" Text='<%#Eval("usu_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>                                
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Label ID="estado" runat="server" Text='<%#Eval("ped_estado")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("ped_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("ped_id")%>' CommandName="Eliminar" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
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
