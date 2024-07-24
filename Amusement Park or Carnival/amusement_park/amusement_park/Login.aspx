<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="amusement_park.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="reg/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="reg/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="reg/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="reg/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="reg/css/main.css" rel="stylesheet" media="all">
</head>
<body>
    <style type="text/css">
        .valErr {
            color: red !important;
        }
    </style>





    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Login</h2>

                    <form id="form1" runat="server">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" Height="16px"></asp:TextBox>
                           <br />


                        </div>

                        <div class="input-group">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Passsword"></asp:TextBox>

                        </div>








                        <div class="p-t-10">
                            <%--<button class="btn btn--pill btn--green" name="register" type="submit">Register</button>--%>
                            <asp:Button ID="Button1" runat="server" class="btn btn--pill btn--green" Text="Login" OnClick="Button1_Click1" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Not registered yet?  "></asp:Label>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#66CCFF" NavigateUrl="~/Customer_reg.aspx">Sign up</asp:HyperLink>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="reg/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="reg/vendor/select2/select2.min.js"></script>
    <script src="reg/vendor/datepicker/moment.min.js"></script>
    <script src="reg/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="reg/js/global.js"></script>
</body>
</html>
