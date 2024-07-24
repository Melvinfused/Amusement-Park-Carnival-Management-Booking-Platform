<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Reports.aspx.cs" Inherits="amusement_park.Admin_Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          .auto-style1 {
      width: 100%;
      font-size: 1.5rem;
  }
        .auto-style2 {
            width: 441px;
            font-size: 1.5rem;
        }
        .auto-style3 {
            width: 441px;
            height: 277px;
            font-size: 1.5rem;
        }
        .auto-style4 {
            height: 277px;
            font-size: 1.5rem;
        }
        .auto-style5 {
            width: 441px;
            height: 282px;
            font-size: 1.5rem;
        }
        .auto-style6 {
            height: 282px;
            font-size: 1.5rem;
        }
        .auto-style7 {
    width: 265px;
    height: 35px;
    font-size: 1.5rem;
}
.auto-style8 {
    width: 236px;
    height: 35px;
    font-size: 1.5rem;
}
.auto-style9 {
    height: 35px;
    font-size: 1.5rem;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                Rides</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <th>Ride ID</th> 
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Price</th>
                                <th>Image</th>
                                </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <td><%# Eval("rid") %></td> 
                            <td><%# Eval("rname") %></td> 
                            <td><%# Eval("duration") %></td>
                            <td><%# Eval("price") %></td>
                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td>
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
            <td class="auto-style2">&nbsp;</td>
            <td>
                Customers</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                    <HeaderTemplate>
                        <table border="1"  id="example2" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <th>Customer ID</th>
                                <th>Name</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Email</th>
                                </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <td><%# Eval("cid") %></td> 
                            <td><%# Eval("cname") %></td> 
                            <td><%# Eval("username") %></td>
                            <td><%# Eval("password") %></td>
                            <td><%# Eval("email") %></td> 
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
            <td class="auto-style2">&nbsp;</td>
            <td>Bookings</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:Repeater ID="Repeater3" runat="server">
                    <HeaderTemplate>
                        <table border="1"  id="example3" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <th>Booking ID</th>
                                <th>Customer ID</th>
                                <th>Booking Date</th>
                                <th>Event Date</th>
                                <th>Total Price</th>
                                </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <td><%# Eval("bid") %></td> 
                            <td><%# Eval("cid") %></td> 
                            <td><%# Eval("date") %></td>
                            <td><%# Eval("fdate") %></td>
                            <td><%# Eval("totprice") %></td>
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
            <td class="auto-style2">&nbsp;</td>
            <td>


                <asp:Repeater ID="Repeater4" runat="server">
    <HeaderTemplate>
        <table border="1"  id="example4" class="table table-striped table-fixed table-dark"  >
            Earnings (Sum of earnings from each registered user)
            <thead>
                

                <tr>
                <th>Customer ID</th>
                <th>Earnings</th>
                </tr></thead>
            <tbody>
    </HeaderTemplate>
     <ItemTemplate>
        <tr>
            <td><%# Eval("cid") %></td> 
            <td><%# Eval("Earnings") %></td>
        </tr>
           
    </ItemTemplate>
     <FooterTemplate>
         </tbody>
        </table>
    </FooterTemplate>
</asp:Repeater>

                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
