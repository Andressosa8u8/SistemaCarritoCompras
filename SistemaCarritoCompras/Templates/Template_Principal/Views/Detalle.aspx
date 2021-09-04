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

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
