<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Principal/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Principal.Views.Detalle" %>

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
                                <li><i class="far fa-envelope rgtspace-5"></i>foodnow@gmail.com</li>
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
                            <h1><a href="Principal.aspx">FOOD NOW</a></h1>
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
                    <h6 class="heading">Reportes</h6>
                    <ul>
                        <li><a href="Detalle.aspx">Detalle de Compra</a></li>
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
            <div class="container">
        <div class="row">
            <div class="col">
                <table class="table-responsive">
        <tr>
            <td colspan="3" style="text-align: center">
                <h1>Carrito de compras</h1></td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                <asp:TextBox ID="txtCodigo" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                <strong>Fecha :</strong></td>
            <td style="width: 397px">
                <asp:Label ID="lblFecha" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                Cliente :</td>
            <td style="width: 397px; margin-bottom:4px;margin-top:4px">
                <%--<asp:TextBox ID="txtCliente" runat="server" Width="332px" CssClass="form-control"></asp:TextBox>--%>
                <asp:Label ID="lblCliente" runat="server"  Width="332px" CssClass="form-control" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px; margin-bottom:4px;margin-top:4px"">
                Email :</td>
            <td style="width: 397px">
                <asp:Label ID="lblEmail" runat="server" Width="329px" CssClass="form-control" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="table-responsive">

                    <table class="table">
                        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="grvDetalle" runat="server" AutoGenerateColumns="False" Width="505px"
                    OnRowCommand="grvDetalle_RowCommand" OnRowDeleting="grvDetalle_RowDeleting"
                    CssClass="table-responsive">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Editar" />
                        <asp:BoundField DataField="pro_id" HeaderText="Codigo" />
                        <asp:BoundField DataField="pro_nombre" HeaderText="Descripcion" />
                        <asp:BoundField DataField="pro_precio" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Cantidad">
                            <ItemTemplate>
                                <asp:TextBox ID="txtCantidad" runat="server" Height="19px" Width="73px">1</asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="subtotal" HeaderText="Sub Total" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                SubTotal S/ :&nbsp;
                <asp:Label ID="lblSubTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                IGV S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblIGV" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                Total S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" CssClass="btn btn-primary" />
                <asp:Button ID="btnContinuar" runat="server" Text="Continuar Compras" style="margin-left: 111px"
                    Width="157px" OnClick="btnContinuar_Click" CssClass="btn btn-primary" />
            </td>
            <td>
                <asp:Button ID="btnCompra" runat="server" style="margin-left: 34px" Text="Comprar" Width="120px"
                    OnClick="btnCompra_Click" CssClass="btn btn-primary" />
            </td>
        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
