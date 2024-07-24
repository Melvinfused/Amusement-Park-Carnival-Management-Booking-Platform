<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ride_Admin.aspx.cs" Inherits="amusement_park.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size: 1.5rem;
        }
        .auto-style2 {
        width: 236px;
        font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  font-size: 1.5rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
    }
        .auto-style3 {
            width: 236px;
            height: 20px;
            font-size: 1.5rem;
        }
        .auto-style4 {
            height: 20px;
            font-size: 1.5rem;
        }
    .auto-style5 {
        width: 265px;
        font-size: 1.5rem;
    }
    .auto-style6 {
        width: 265px;
        height: 20px;
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
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">Ride Name : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="140px" BackColor="#CEFFFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">Ride Duration(Minutes) :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="145px" BackColor="#CEFFFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">Ride Price :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="145px" BackColor="#CEFFFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">Ride Image : </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CEFFFF" />
                <asp:Image ID="Image3" runat="server" Height="75px" Width="144px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                            <thead>
                                <tr>
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Price</th>
                                <th>Image</th>
                                <th>Action</th>
                                <th>Action</th>
                            </tr></thead>
                            <tbody>
                    </HeaderTemplate>
                     <ItemTemplate>
                        <tr>
                            <td><%# Eval("rname") %></td> 
                            <td><%# Eval("duration") %></td>
                            <td><%# Eval("price") %></td>
                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("rimage"),0,((byte[])Eval("rimage")).Length) %>' Width="124px" /></td>
                            <td><asp:Button ID="btn_edit" OnClick="btn_edit_Click" CommandName='<%# Eval("rid") %>' runat="server" Text="Edit"  /></td>
                            <td><asp:Button ID="btn_del"  OnClick="btn_del_Click" CommandName='<%# Eval("rid") %>' runat="server" Text="Delete" /></td>                     
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
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
