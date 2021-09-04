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
            <div class="wrapper row3">
                <main class="hoc container clear">
                    <div class="row">

                        <div class="col-9" id="gallery" style="width: 750px; float: left; padding-right: 30px;">
                            <ul class="nospace group team">
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_salteado" runat="server" ImageUrl="../images/galeria/5.png" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Salteado de Camaron</h3>
                                            <br />
                                            <br />
                                            <h3>$7.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_bandeja" runat="server" ImageUrl="../images/galeria/4.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Bandeja Marinera</h3>
                                            <br />
                                            <br />
                                            <h3>$15.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_pargo" runat="server" ImageUrl="../images/galeria/8.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Pargo Frito</h3>
                                            <br />
                                            <br />
                                            <h3>$8.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_conchitas" runat="server" ImageUrl="../images/galeria/11.jpeg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Conchitas Asadas</h3>
                                            <br />
                                            <br />
                                            <h3>$12.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_encebollado" runat="server" ImageUrl="../images/galeria/12.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Encebollado</h3>
                                            <br />
                                            <br />
                                            <h3>$5.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_ceviche_mixto" runat="server" ImageUrl="../images/galeria/13.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Ceviche Mixto</h3>
                                            <br />
                                            <br />
                                            <h3>$11.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_costillas" runat="server" ImageUrl="../images/galeria/2.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Costillas BBQ</h3>
                                            <br />
                                            <br />
                                            <h3>$9.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_roma_burguer" runat="server" ImageUrl="../images/galeria/15.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Roma Burguer</h3>
                                            <br />
                                            <br />
                                            <h3>$8.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_lasagna" runat="server" ImageUrl="../images/galeria/17.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Lasagna</h3>
                                            <br />
                                            <br />
                                            <h3>$8.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_fritada_pollo" runat="server" ImageUrl="../images/galeria/18.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Fritada de Pollo</h3>
                                            <br />
                                            <br />
                                            <h3>$7.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_milanesa" runat="server" ImageUrl="../images/galeria/19.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Milanesa a la Napolitana</h3>
                                            <br />
                                            <br />
                                            <h3>$8.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_alitas" runat="server" ImageUrl="../images/galeria/20.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Alitas BBQ</h3>
                                            <br />
                                            <br />
                                            <h3>$7.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_jugos" runat="server" ImageUrl="../images/galeria/3.png" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Jugos Naturales</h3>
                                            <br />
                                            <br />
                                            <h3>$3.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_coctel" runat="server" ImageUrl="../images/galeria/10.png" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Coctel Ween</h3>
                                            <br />
                                            <br />
                                            <h3>$4.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_gaseosas" runat="server" ImageUrl="../images/galeria/21.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Gaseosa</h3>
                                            <br />
                                            <br />
                                            <h3>$3.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_cerveza" runat="server" ImageUrl="../images/galeria/6.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Cerveza</h3>
                                            <br />
                                            <br />
                                            <h3>$4.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_selva_negra" runat="server" ImageUrl="../images/galeria/24.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Selva Negra</h3>
                                            <br />
                                            <br />
                                            <h3>$4.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_gelatina" runat="server" ImageUrl="../images/galeria/22.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Gelatina de Sabores</h3>
                                            <br />
                                            <br />
                                            <h3>$4.00</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_cheescake" runat="server" ImageUrl="../images/galeria/16.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Cheescake Frutos Rojos</h3>
                                            <br />
                                            <br />
                                            <h3>$4.50</h3>
                                        </div>
                                    </figure>
                                </li>
                                <li class="one_quarter first" style="width: 100%;">
                                    <figure>
                                        <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                            ID="img_btn_tiramisu" runat="server" ImageUrl="../images/galeria/23.jpg" />
                                        <div style="width: 60%; float: left; padding: 20px;">
                                            <br />
                                            <h3>Tiramisú</h3>
                                            <br />
                                            <br />
                                            <h3>$4.50</h3>
                                        </div>
                                    </figure>
                                </li>
                            </ul>
                        </div>

                        <div class="col-3" style="width: auto; float: right; border-left: 6px orange solid; padding-left: 30px;">
                            <h3>Tu Pedido</h3>
                            <br />
                            <div class="one_quarter first">
                                <asp:GridView ID="grvPedidos" AutoGenerateColumns="false" Width="100%" CssClass="table table-borderless text-center" GridLines="None" runat="server">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>1</asp:ListItem>
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="cantidad" runat="server"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="precio" runat="server"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>


                                <%--<table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="ddl_cantidad" runat="server" Style="border: none">
                                                    <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                                    <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                                    <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_nombre" runat="server" Style="border: none"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_precio" runat="server" Style="border: none"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="ddl_cantidad2" runat="server" Style="border: none">
                                                    <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                                    <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                                    <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_nombre2" runat="server" Style="border: none"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_precio2" runat="server" Style="border: none"></asp:TextBox>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>--%>
                                <button type="button" class="btn btn-warning">Aceptar</button>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <!-- ################################################################################################ -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
