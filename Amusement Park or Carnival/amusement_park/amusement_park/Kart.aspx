<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Kart.aspx.cs" Inherits="amusement_park.Kart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .pro-qty-2 {
            display: flex flex-direction:table-row;
            align-items: center;
            justify-content: center
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shopping Cart</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <%--<a href="./shop.html">Cart</a>--%>

                            <span>Shopping Cart</span>
                        </div>
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
                    <div class="shopping__cart__table">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Activity</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <%--<img src="img/shopping-cart/cart-1.jpg" alt="">--%>
                                            <asp:Image ID="Image1" Height="120px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' runat="server" />
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6></h6>
                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("rname") %>'></asp:Label><br />
                                            <asp:HiddenField ID="HiddenField1" runat="server" value='<%#Eval("price") %>'/>
                                            <%--<h5>$98.49</h5>--%>
                                            <strong><asp:Label ID="Label1" runat="server" Text='<%#Eval("price") %>'></asp:Label></strong>
                                            <asp:HiddenField ID="HiddenField2" runat="server" value='<%#Eval("crtid") %>'/>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CommandName='<%#Eval("crtid")%>' Text="+" />
                                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("qty") %>'></asp:TextBox>
                                                
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click2" CommandName='<%#Eval("crtid")%>' Text="-" />
                                                <asp:HiddenField ID="HiddenField3" runat="server" value='<%#Eval("crtid") %>'/>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("tprice") %>'></asp:Label>
                                    </td>
                                    <td class="cart__close">
                                        <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("crtid")%>' OnClick="LinkButton1_Click" runat="server"><i class="fa fa-close"></i></asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>

                            <FooterTemplate>
                                </tbody>
                        </table>
                            </FooterTemplate>

                        </asp:Repeater>
                        <asp:Panel ID="EmptyCartMessage" runat="server" Visible="false" CssClass="empty-cart-message">
                              <p class="empty-cart-message-text">Cart is empty</p>
                               
                        </asp:Panel>


                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn">
                                    <a href="Bookings page.aspx">Continue Shopping</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn update__btn">
                                    <a href="#"><i class="fa fa-spinner"></i>Update cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <%--<div class="cart__discount">
                        <h6>Discount codes</h6>
                        
                            <input type="text" placeholder="Coupon code">
                            <button type="submit">Apply</button>
                       
                    </div>--%>
                        <asp:Label ID="Label4" runat="server" Text="Booking Date"></asp:Label>
                                    <asp:Calendar ID="Calendar1" OnSelectionChanged="Calendar1_SelectionChanged1" runat="server" ></asp:Calendar>
                        <asp:TextBox ID="SelectedDateTextBox" runat="server" style="display:none"></asp:TextBox>
<asp:RangeValidator ID="rvRange" runat="server" ControlToValidate="SelectedDateTextBox" ErrorMessage="Please select a date within 5 days"></asp:RangeValidator>

                        <div class="cart__total">
                            <h6>Cart total</h6>
                            <ul>
                                <%--<li>Subtotal <span>
                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                             </span></li>--%>
                                <li>Total : <span>
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                          </span></li>
                            </ul>
                           <%-- <a href="#" class="primary-btn">Proceed to checkout</a>--%>
                            <asp:LinkButton ID="LinkButton2" class="primary-btn" OnClick="LinkButton2_Click" runat="server">Proceed to checkout</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
