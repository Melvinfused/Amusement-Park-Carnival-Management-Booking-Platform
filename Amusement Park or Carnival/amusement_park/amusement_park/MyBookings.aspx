<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="amusement_park.MyBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style1">

                <asp:Label ID="Label1" runat="server" Text="Current Bookings"></asp:Label>

                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <%--<th>Name</th>
                                <th>Duration</th>
                                <th>Qty</th>--%>
                                <th>Price</th>
                                <%--<th>Image</th>--%>
                                <th>Booked Date</th>
                                <th>Date of Booking</th>
                                <th>     </th>
                                
                            </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <%--<td><%# Eval("rname") %></td> --%>
                            <%--<td><%# Eval("duration") %></td>
                            <td><%# Eval("qty") %></td>--%>
                            <td><%# Eval("totprice") %></td>
                            <%--<td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td>--%>
                            <td><%# Eval("date") %></td>
                            <td><%# Eval("fdate") %></td>
                            <td><asp:Button ID="btn_cancel"  OnClick="btn_cancel_Click" CommandName='<%# Eval("cid") %>' runat="server" Text="Cancel" /></td>   
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CommandName='<%# Eval("bid") %>' Text="Details" /></td>
                        </tr>
                           
                    </ItemTemplate>
                     <FooterTemplate>
                         </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

                <asp:Label ID="Label2" runat="server" Text="Booking History"></asp:Label>

                 <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                    <HeaderTemplate>
                        <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Qty</th>
                                <th>Price</th>
                                <%--<th>Image</th>--%>
                                <th>Booked Date</th>
                                <th>Date of Booking</th>
                                
                                
                            </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <td><%# Eval("rname") %></td> 
                            <td><%# Eval("duration") %></td>
                            <td><%# Eval("qty") %></td>
                            <td><%# Eval("totprice") %></td>
<%--                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td>--%>
                            <td><%# Eval("date") %></td>
                            <td><%# Eval("fdate") %></td>
                        </tr>
                           
                    </ItemTemplate>
                     <FooterTemplate>
                         </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        

        
        <tr>
            <td>
                
            </td>
        </tr>
            
        
        <tr>
            <td>&nbsp;</td>
        </tr>
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
