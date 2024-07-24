<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaySuccess.aspx.cs" Inherits="amusement_park.PaySuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 436px;
        }
        .centered-image {
        display: block;  
        margin-right:614px;
        text-align: center;
        margin-left: 168px;
        
    }
        #Label1 {
        display: block;  
        margin-left: 70px;
        font-family:'Segoe UI'
    }
            #HyperLink1 {
    display: block;
  margin-left: 225px;
  margin-right: 670px;
  text-align: center;
  font-family:"Segoe UI"
}
            .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;  Button background color 
        color: #fff;  Text color 
        text-decoration: none;
        font-size: 14pt;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .button:hover {
        background-color: #0056b3;  Darker background color on hover 
    }
    </style>
</head>
<body>
     
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <a class="centered-image">
                                 <img src="img/check.png" alt="">
                                    </a>
                                    
                                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="Payment Successful!" Font-Size="42pt"></asp:Label>
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
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                   <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx" Font-Size="14pt">Return Home</asp:HyperLink>--%>
                                    <a id="HyperLink1" class="button" href="Home.aspx">Return Home</a>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
