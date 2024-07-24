<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Bookings page.aspx.cs" Inherits="amusement_park.Landing_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
            width: 236px;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
            width: 130px;
        }
        .auto-style7 {
            height: 26px;
            width: 130px;
        }
        .auto-style8 {
            width: 130px;
        }
        .auto-style9 {
            width: 190%;
            height: 153px;
        }
        .auto-style10 {
            height: 32px;
            width: 80px;
        }
        .auto-style11 {
            width: 80px;
        }
        .auto-style12 {
            height: 26px;
            width: 80px;
        }
        .auto-style14 {
            width: 236px;
        }
        .auto-style15 {
            height: 32px;
            width: 236px;
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
                        <h4>Book Activities</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <span>Book Activities</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->


    <table class="auto-style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        

        
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="194px" />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style5">
                                    Activity:</td>
                                <td class="auto-style15">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("rname") %>'></asp:Label>
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    Price:</td>
                                <td class="auto-style15">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    Duration(min):</td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("duration") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="White" BorderColor="#33CCCC" ForeColor="#33CCCC">Book now</asp:LinkButton>
                                </td>
                                <td class="auto-style3">
                                    <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#3333CC" CommandArgument='<%# Eval("rid") %>' ForeColor="#3333CC" OnClick="LinkButton1_Click">Add to cart</asp:LinkButton>
                                </td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
            
        
        <tr>
            <td>&nbsp;</td>
        </tr>
           <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    </table>
</asp:Content>
