<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="amusement_park.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table border="1" id="example" class="table table-striped table-fixed table-dark">
                            <thead>
                                <tr>
                                    <th>Ride ID</th>
                                    <th>Name</th>
                                    <th>Duration</th>
                                    <th>qty</th>
                                    <th>Price</th>
                                    <th>Image</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("rid") %></td>
                            <td><%# Eval("rname") %></td>
                            <td><%# Eval("duration") %></td>
                            <td><%# Eval("qty") %></td>
                            <td><%# Eval("price") %></td>
                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td> </td>
                            
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
     </table>
                    </FooterTemplate>
                </asp:Repeater>
</asp:Content>
