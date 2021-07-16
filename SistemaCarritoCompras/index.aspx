<%@ Page Title="" Language="C#" MasterPageFile="~/IndexPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SistemaCarritoCompras.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="bgded overlay" style="background-image: url('Templates/Template_Principal/images/galeria/portada.jpg');">
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
                                <li><a href="index.aspx"><i class="fas fa-home" style="color: orange"></i></a></li>
                                <li><a href="LOGIN.aspx" title="Log out"><i class="fas fa-sign-in-alt" style="color: orange"></i></a></li>
                            </ul>
                            <!-- ################################################################################################ -->
                        </div>
                    </div>
                </div>
                <!-- ################################################################################################ -->
                <div class="wrapper row1">
                    <header id="header" class="hoc clear">
                        <div id="logo" class="fl_left">
                            <h1><a href="index.html">LOS 7 MARES</a></h1>
                        </div>
                        <nav id="mainav" class="fl_right">
                            <!-- ################################################################################################ -->
                            <ul class="clear">
                                <li class="active"><a href="index.aspx">Home</a></li>
                                <li><a class="drop">Mantenimientos</a>
                                    <ul>
                                        <li><a href="Templates/Template_Principal/pages/CrudClientes.aspx">Clientes</a></li>
                                        <li><a href="Templates/Template_Principal/pages/CrudProductos.aspx">Productos</a></li>
                                    </ul>
                                </li>
                                <li><a class="drop">Ventas</a>
                                    <ul>
                                        <li><a href="Templates/Template_Principal/pages/Menu.aspx">Pedido</a></li>
                                    </ul>
                                </li>
                                <li><a href="Templates/Template_Principal/pages/Contactenos.aspx">Contactenos</a></li>
                            </ul>
                            <!-- ################################################################################################ -->
                        </nav>
                    </header>
                </div>
                <!-- ################################################################################################ -->
                <div id="pageintro" class="hoc clear">
                    <article>
                        <strong>
                            <h3 class="heading" style="font-family: 'Brush Script MT';">"DEL MAR A TU PALADAR"</h3>
                        </strong>
                        <footer>
                            <ul class="nospace inline pushright">
                                <li><a class="btn" href="Templates/Template_Principal/pages/Menu.aspx" style="font-size: large;">Menu</a></li>
                            </ul>
                        </footer>
                    </article>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <div class="wrapper row3">
                <main class="hoc container clear">
                    <section id="introblocks">
                        <ul class="nospace group btmspace-80">
                            <li class="one_third first">
                                <figure>
                                    <a>
                                        <img src="Templates/Template_Principal/images/galeria/4.jpg" style="width: 400px; height: 250px;"></a>
                                    <figcaption>
                                        <h6 class="heading">Mariscos</h6>
                                        <p>Disfruta de la gran variedad de mariscos desde camaron hasta cangrejo....</p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li class="one_third">
                                <figure>
                                    <a>
                                        <img src="Templates/Template_Principal/images/galeria/2.jpg" style="width: 400px; height: 250px;"></a>
                                    <figcaption>
                                        <h6 class="heading">Platos a la carta</h6>
                                        <p>Prueba nuestra nuevas Cosquillas BBQ y hasnos saber lo que piensas!</p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li class="one_third">
                                <figure>
                                    <a>
                                        <img src="Templates/Template_Principal/images/galeria/3.png" style="width: 400px; height: 250px;"></a>
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
                                    <img src="Templates/Template_Principal/images/galeria/5.png" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>SALTEADO DE CAMARON</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="Templates/Template_Principal/images/galeria/16.jpg" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>CHEESCAKE FRUTOS ROJOS</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="Templates/Template_Principal/images/galeria/10.png" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>COCTEL WEEN</strong></figcaption>
                            </figure>
                        </li>
                        <li class="one_quarter">
                            <figure>
                                <a>
                                    <img src="Templates/Template_Principal/images/galeria/15.jpg" style="width: 250px; height: 200px;"></a>
                                <figcaption><strong>ROMA BURGUER</strong></figcaption>
                            </figure>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <div class="bgded overlay row4" style="background-image: url('Templates/Template_Principal/images/galeria/footer.jpg');">
                <footer id="footer" class="hoc clear">
                    <div class="center btmspace-50">
                        <h6 class="heading">LOS 7 MARES</h6>
                        <ul class="faico clear">
                            <li><a class="faicon-facebook" href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a></li>
                            <li><a class="faicon-google-plus" href="https://mail.google.com/mail/u/0/#"><i class="fab fa-google-plus-g"></i></a></li>
                            <li><a class="faicon-twitter" href="https://twitter.com/"><i class="fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                    <div id="ctdetails" class="clear">
                        <ul class="nospace clear">
                            <li class="one_quarter first">
                                <div class="block clear"><a><i class="fas fa-phone" style="color: orange"></i></a><span><strong>LLamanos:</strong>+593 (02) 256 7890</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-envelope" style="color: orange"></i></a><span><strong>Envianos un Correo:</strong>los7mares@gmail.com</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-clock" style="color: orange"></i></a><span><strong>Lunes - Domingo:</strong> 08.00am - 18.00pm</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-map-marker-alt" style="color: orange"></i></a><span><strong>Visitanos:</strong> Calle J E155 Frente al Hospital MMH</span></div>
                            </li>
                        </ul>
                    </div>
                </footer>
            </div>
            <!-- ################################################################################################ -->
            <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
            <!-- JAVASCRIPTS -->
            <script src="Templates/Template_Principal/layout/scripts/jquery.min.js"></script>
            <script src="Templates/Template_Principal/layout/scripts/jquery.backtotop.js"></script>
            <script src="Templates/Template_Principal/layout/scripts/jquery.mobilemenu.js"></script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
