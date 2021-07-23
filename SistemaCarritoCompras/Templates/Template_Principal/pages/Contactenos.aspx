<%@ Page Title="" Language="C#" MasterPageFile="~/IndexPage.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Principal.pages.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="bgded overlay" style="background-image: url('../images/galeria/portada.jpg');">
                <div class="wrapper row0">
                    <div id="topbar" class="hoc clear">
                        <div class="fl_left">
                            <ul class="nospace">
                                <li><i class="fas fa-phone rgtspace-5"></i>+593 (02) 256 7890</li>
                                <li><i class="far fa-envelope rgtspace-5"></i>los7mares@gmail.com</li>
                            </ul>
                        </div>
                        <div class="fl_right">
                            <ul class="nospace">
                                <li><a href="../../../index.aspx"><i class="fas fa-home" style="color:orange"></i></a></li>
                                <li><a href="../../../Login.aspx" title="Log out"><i class="fas fa-sign-in-alt" style="color:orange"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="wrapper row1">
                    <header id="header" class="hoc clear">
                        <div id="logo" class="fl_left">
                            <h1><a href="../../../index.aspx">LOS 7 MARES</a></h1>
                        </div>
                        <nav id="mainav" class="fl_right">
                            <ul class="clear">
                                <li class="active"><a href="../../../index.aspx">Home</a></li>
                                <li><a class="drop" href="#">Mantenimientos</a>
                                    <ul>
                                        <li><a href="CrudUsuarios.aspx">Usuarios</a></li>
                                        <li><a href="CrudProveedores.aspx">Proveedores</a></li>
                                        <li><a href="CrudProductos.aspx">Productos</a></li>
                                        <li><a href="CrudClientes.aspx">Clientes</a></li>
                                    </ul>
                                </li>
                                <li><a class="drop">Ventas</a>
                                    <ul>
                                        <li><a href="Menu.aspx">Pedido</a></li>
                                    </ul>
                                </li>
                                <li><a href="Contactenos.aspx">Contactenos</a></li>
                            </ul>
                        </nav>
                    </header>
                </div>
                <div id="breadcrumb" class="hoc clear">
                    <h6 class="heading">Comentarios</h6>
                    <ul>
                        <li><a href="Contactenos.aspx">Contactenos</a></li>
                    </ul>
                </div>
            </div>
            <div class="wrapper row3">
                <main class="hoc container clear">
                    <div class="content">
                        <div id="comments">
                            <h2>Escriba su experiencia</h2>
                            <form action="#" method="post">
                                <div class="one_third first">
                                    <label for="name">Nombre <span>*</span></label>
                                    <input type="text" name="name" id="name" value="" size="22" required>
                                </div>
                                <div class="one_third">
                                    <label for="email">Email <span>*</span></label>
                                    <input type="email" name="email" id="email" value="" size="22" required>
                                </div>
                                <div class="block clear">
                                    <label for="comment">Su Comentario</label>
                                    <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
                                </div>
                                <div>
                                    <input type="submit" name="submit" value="Enviar">
                                    
                            <input type="reset" name="reset" value="Cancelar">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="clear"></div>
                </main>
            </div>
            <div class="bgded overlay row4" style="background-image: url('../images/galeria/footer.jpg');">
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
                                <div class="block clear"><a><i class="fas fa-phone" style="color:orange"></i></a><span><strong>LLamanos:</strong>+593 (02) 256 7890</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-envelope" style="color:orange"></i></a><span><strong>Envianos un Correo:</strong>los7mares@gmail.com</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-clock" style="color:orange"></i></a><span><strong>Lunes - Domingo:</strong> 08.00am - 18.00pm</span></div>
                            </li>
                            <li class="one_quarter">
                                <div class="block clear"><a><i class="fas fa-map-marker-alt" style="color:orange"></i></a><span><strong>Visitanos:</strong> Calle J E155 Frente al Hospital MMH</span></div>
                            </li>
                        </ul>
                    </div>
                </footer>
            </div>
            <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
            <script src="../layout/scripts/jquery.min.js"></script>
            <script src="../layout/scripts/jquery.backtotop.js"></script>
            <script src="../layout/scripts/jquery.mobilemenu.js"></script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
