<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormProduct.aspx.cs" Inherits="SistemaCarritoCompras.Templates.Template_Admin.Views.FormProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
                <div class="card-header">
                    <h4>Formulario de Productos</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Nombre del Producto</label>
                        <asp:TextBox ID="txt_nomProducto" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Precio del producto</label>
                        <asp:TextBox ID="txt_preProducto" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Descripción</label>
                        <asp:TextBox ID="txt_descripcion" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:FileUpload ID="FU_imagen" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Categoria</label>
                        <asp:DropDownList ID="ddl_categoria" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Proveedor</label>
                        <asp:DropDownList ID="ddl_proveedor" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btn_Cancelar" CssClass="btn btn-outline-secondary btn-fw" OnClick="btn_Cancelar_Click" runat="server" Text="Cancelar" />
                    <asp:Button ID="btn_Modificar" CssClass="btn btn-primary" runat="server" OnClick="btn_Modificar_Click" Text="Modificar" Visible="False" />
                    <asp:Button ID="btn_Guardar" CssClass="btn btn-primary" runat="server" OnClick="btn_Guardar_Click" Text="Guardar" />
                </div>
            </div>
    </form>
</body>
</html>
