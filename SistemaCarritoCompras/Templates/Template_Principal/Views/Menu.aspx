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
                                <li><a href="Contactenos.aspx">Contactenos</a></li>
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
                        <div class="col-9" id="gallery" style="width: auto; float: left; padding-right: 30px;">
                            <ul class="nospace group team">
                                <asp:Repeater ID="rptCarrito" runat="server">
                                    <ItemTemplate>
                                        <li class="one_quarter first" style="width: 100%;">
                                            <figure>
                                                <asp:ImageButton class="imgover" Style="background: transparent; border: transparent; padding: 20px; width: 275px; height: 200px;"
                                                    ID="img_btn_seleccion" runat="server" ImageUrl='<%# "~/Templates/Images/" + Eval("pro_imagen") %>' OnClick="img_btn_seleccion_Click" />
                                                <div style="width: 60%; float: left; padding: 20px;">
                                                    <br />
                                                    <h3><%#Eval("pro_nombre")%></h3>
                                                    <br />
                                                    <br />
                                                    <h3>$<%#Eval("pro_precio")%></h3>
                                                </div>
                                            </figure>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="col-3" style="width: auto; float: right; border-left: 6px orange solid; padding-left: 30px;">
                            <h3>Tu Pedido</h3>
                            <br />
                            <div class="one_quarter first">
                                <table class="table table-borderless">
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
                                </table>
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
