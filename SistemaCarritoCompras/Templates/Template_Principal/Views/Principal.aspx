<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Template_Principal/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Principal.Views.Principal3" %>

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
                <div id="pageintro" class="hoc clear">
                    <article>
                        <strong>
                            <h3 class="heading" style="font-family: Brush Script MT;">"BARRIGA LLENA CORAZÓN CONTENTO"</h3>
                        </strong>
                        <footer>
                            <ul class="nospace inline pushright">
                                <li><a class="btn" href="Menu.aspx" style="font-size: large;">Menu</a></li>
                            </ul>
                        </footer>
                    </article>
                </div>
            </div>
            <!-- ################################################################################################ -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="wrapper row3">
                <main class="hoc container clear">
                    <section id="introblocks">
                        <ul class="nospace group btmspace-80">
                            <li class="one_third first">
                                <figure>
                                    <a>
                                        <img src="../images/galeria/4.jpg" style="width: 400px; height: 250px;"></a>
                                    <figcaption>
                                        <h6 class="heading">Mariscos</h6>
                                        <p>Disfruta de la gran variedad de mariscos desde camaron hasta cangrejo....</p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li class="one_third">
                                <figure>
                                    <a>
                                        <img src="../images/galeria/2.jpg" style="width: 400px; height: 250px;"></a>
                                    <figcaption>
                                        <h6 class="heading">Platos a la carta</h6>
                                        <p>Prueba nuestra nuevas Cosquillas BBQ y hasnos saber lo que piensas!</p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li class="one_third">
                                <figure>
                                    <a>
                                        <img src="../images/galeria/3.png" style="width: 400px; height: 250px;"></a>
                                    <figcaption>
                                        <h6 class="heading">Bebidas</h6>
                                        <p>Deleita tus comidas con una buena bebida, gaseosas, jugos, tea, cerveza, etc....</p>
                                    </figcaption>
                                </figure>
                            </li>
                        </ul>
                    </section>
                    <div class="clear"></div>
                </main>
            </div>
            <!-- ################################################################################################ -->
            <div class="wrapper row2">
                <div class="hoc container clear">
                    <div class="sectiontitle">
                        <p class="heading underline font-x2">LOS MAS DESTACADO</p>
                    </div>
                    <ul class="nospace group team">
                        <li class="one_quarter first">
                            <figure>
                                <a>
                                    <img src="../images/galeria/5.png" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>SALTEADO DE CAMARON</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="../images/galeria/16.jpg" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>CHEESCAKE FRUTOS ROJOS</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="../images/galeria/10.png" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>COCTEL WEEN</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="../images/galeria/15.jpg" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>ROMA BURGUER</strong></figcaption>
                            </figure>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- ################################################################################################ -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
