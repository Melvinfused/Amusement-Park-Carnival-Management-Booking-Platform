<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DatedReport.aspx.cs" Inherits="amusement_park.DatedReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            Timeline</td>
    </tr>
    <tr>
        <asp:Label ID="Label1" runat="server" Text="Initial Date : "></asp:Label>
        <table>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Calendar ID="Calendar1" OnSelectionChanged="cal2" runat="server"></asp:Calendar>
        <asp:Label ID="Label2" runat="server" Text="Final Date : "></asp:Label>
        <asp:Calendar ID="Calendar2" OnSelectionChanged="cal2" runat="server"></asp:Calendar>
        <asp:Button ID="Button1" OnClick="button1_click1" runat="server" Text="Button" />

        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                        <thead>
                            <tr>
                            <th>Booking ID</th> 
                            <th>Name</th>
                            <th>Duration</th>
                            <th>Price</th>
                            <th>Image</th>
                            </tr></thead>
                        <tbody>
                </HeaderTemplate>
                 <ItemTemplate>
                    <tr>
                        <td><%# Eval("bid") %></td> 
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
    </table>

</asp:Content>
