<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_reg.aspx.cs" Inherits="amusement_park.WebForm3" %>

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
                    <h2 class="title">Register</h2>
    <form id="form1" runat="server">
         <div class="input-group">
                           <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator> <br/>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Textbox1" ValidationExpression="^[a-zA-Z]+([- ][a-zA-Z]+)*$" ErrorMessage="Enter a valid name." ForeColor="#6600CC"></asp:RegularExpressionValidator>
                        </div>
                        <div class="input-group">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Username"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ValidationExpression="^[a-z0-9_]+$" ErrorMessage="Username can only contain a-z0-9_" ForeColor="#6600CC"></asp:RegularExpressionValidator>

                        </div>
                   
       
        <div class="input-group">
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox5" ErrorMessage="*Please enter a password." ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
        <div class="input-group">
                             <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Please confirm password." ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox6" ControlToCompare="TextBox5" Type="String" Operator="Equal" ErrorMessage="<br />*Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                        </div>
        <div class="input-group">
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" validationExpression="^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter a valid email." ForeColor="#6600CC"></asp:RegularExpressionValidator>

                        </div>
        
                        







                        <div class="p-t-10">
                            <%--<button class="btn btn--pill btn--green" name="register" type="submit">Register</button>--%>
                            <asp:Button ID="Submit" class="btn btn--pill btn--green" runat="server" OnClick="Submit_Click" Text="Submit" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Already have an account? "></asp:Label>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#66CCFF" NavigateUrl="~/Login.aspx">Log in</asp:HyperLink>
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
