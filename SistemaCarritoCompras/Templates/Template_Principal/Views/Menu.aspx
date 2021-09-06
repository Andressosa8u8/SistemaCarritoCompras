<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Principal/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Principal.Views.Menu1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_header" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="bgded overlay" style="background-image: url('../images/galeria/portada.jpg');">
                <div class="wrapper row0">
                    <div id="topbar" class="hoc clear">
                        <div class="fl_left">
                            <!-- ################################################################################################ -->
                            <ul class="nospace">
                                <li><i class="fas fa-phone rgtspace-5"></i>+593 (02) 256 7890</li>
                                <li><i class="far fa-envelope rgtspace-5"></i>los7mares@gmail.com</li>
                            </ul>
                            <!-- ################################################################################################ -->
                        </div>
                        <div class="fl_right">
                            <!-- ################################################################################################ -->
                            <ul class="nospace">
                                <li><a href="Principal.aspx"><i class="fas fa-home" style="color: orange"></i></a></li>
                                <asp:LinkButton ID="lnbCerrarSession" OnClick="lnbCerrarSession_Click" runat="server">
                                        <i class="fas fa-sign-in-alt" style="color: orange"></i>
                                </asp:LinkButton>
                            </ul>
                            <!-- ################################################################################################ -->
                        </div>
                    </div>
                </div>
                <!-- ################################################################################################ -->
                <div class="wrapper row1">
                    <header id="header" class="hoc clear">
                        <div id="logo" class="fl_left">
                            <h1><a href="Principal.aspx">LOS 7 MARES</a></h1>
                        </div>
                        <nav id="mainav" class="fl_right">
                            <!-- ################################################################################################ -->
                            <ul class="clear">
                                <li class="active"><a href="Principal.aspx">Home</a></li>
                                <li><a class="drop">Ventas</a>
                                    <ul>
                                        <li><a href="Menu.aspx">Pedido</a></li>
                                    </ul>
                                </li>
                                <li><a href="Detalle.aspx">Detalle de Compra</a></li>
                                <li>
                                    <asp:LinkButton ID="lbn_carrito" OnClick="lbn_carrito_Click" runat="server">
                                        <i class="fas fa-cart-arrow-down" style="color: white"></i>
                                    </asp:LinkButton>
                                </li>
                            </ul>
                            <!-- ################################################################################################ -->
                        </nav>
                    </header>
                </div>
                <!-- ################################################################################################ -->
                <div id="breadcrumb" class="hoc clear">
                    <h6 class="heading">Ventas</h6>
                    <ul>
                        <li><a href="Menu.aspx">Pedido</a></li>
                    </ul>
                </div>
            </div>
            <!-- ################################################################################################ -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <!-- ################################################################################################ -->
            <div class="container-fluid">
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="pro_id" DataSourceID="SqlDataSource1" RepeatColumns="8" OnItemCommand="DataList1_ItemCommand" CssClass="table table-responsive table-light">
                    <ItemTemplate>
                        <asp:Image ID="Image1" Width="140" Height="120" runat="server" ImageUrl='<%# "~/Templates/Images/"+Eval("pro_imagen") %>' CssClass="img-fluid" />
                        <br />
                        <br />
                        Producto :
                                    <asp:Label ID="lbn_nombre" runat="server" Text='<%# Eval("pro_nombre") %>' />
                        <br />
                        <br />
                        Precio :
                                    <asp:Label ID="lbn_precio" runat="server" Text='<%# Eval("pro_precio") %>' />
                        <br />
                        <br />
                        <asp:Button ID="btn_agregar" runat="server" CommandName="Seleccionar" Text="Agregar al Carrito" CssClass="btn btn-warning" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SistemaRestauranteConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Producto]"></asp:SqlDataSource>
                <br />
            </div>
            <!-- ################################################################################################ -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
