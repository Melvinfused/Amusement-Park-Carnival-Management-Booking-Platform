<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="amusement_park.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shopping Cart</h4>
                       <%-- <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Shopping Cart</span>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    

                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                    <HeaderTemplate>
                                            <table border="1"  id="example" class="table table-striped table-fixed table-dark" >
                            <thead>
                                <tr>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Price</th>
                                <th>      </th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr> 
                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td>
                            <td><%# Eval("rname") %></td> 
                            <td><%# Eval("duration") %></td>
                            <td><%# Eval("price") %></td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Remove" /></td>

                            </tr>
                           
                    </ItemTemplate>
                     <FooterTemplate>
                         </tbody>
                        </table>
                    </FooterTemplate>
                                </asp:Repeater>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    

                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->
</asp:Content>
