<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="amusement_park.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
<meta name="robots" content="noindex,follow" />
</head>
<body>
    <form id="form1" runat="server">
        <<div class="checkout-panel">
    <div class="panel-body">
      <h2 class="title">Checkout</h2>

      <%--<div class="progress-bar">
        <div class="step active"></div>
        <div class="step active"></div>
        <div class="step"></div>
        <div class="step"></div>
      </div>--%>

      <div class="payment-method">
        <label for="card" class="method card">
          <div class="card-logos">
            <img src="img/visa_logo.png"/>
            <img src="img/mastercard_logo.png"/>
          </div>

          <div class="radio-input">
            <input id="card" type="radio" name="payment">
            Pay <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> with credit card

          </div>
        </label>

        <label for="paypal" class="method paypal">
          <img src="img/paypal_logo.png"/>
          <div class="radio-input">
            <input id="paypal" type="radio" name="payment">
            Pay <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> with PayPal
          </div>
        </label>
      </div>

      <div class="input-fields">
        <div class="column-1">
          <label for="cardholder">Cardholder's Name</label>
          <input type="text" id="cardholder" />
   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorCardholder" runat="server" ControlToValidate="cardholder" ErrorMessage="*Required Field" />--%>
        


          <div class="small-inputs">
            <div>
              <label for="date">Valid thru</label>
              <input type="text" id="month" placeholder="MM " /> 
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonth" runat="server" ControlToValidate="month" ErrorMessage="Month is required" Display="Dynamic" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMonth" runat="server" ControlToValidate="month" ErrorMessage="Invalid month" ValidationExpression="^(0[1-9]|1[0-2])$" Display="Dynamic" />
	      --%><input type="text" id="year" placeholder= "YY" />
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorYear" runat="server" ControlToValidate="year" ErrorMessage="Year is required" Display="Dynamic" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorYear" runat="server" ControlToValidate="year" ErrorMessage="Invalid year" ValidationExpression="^\d{2}$" Display="Dynamic" />--%>

            </div>



            <div>
              <label for="verification">CVV / CVC *</label>
              <input type="password" id="verification" maxlength="3"/>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorCVV" runat="server" ControlToValidate="verification" ErrorMessage="CVV / CVC is required" Display="Dynamic" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorCVV" runat="server" ControlToValidate="verification" ErrorMessage="Invalid CVV / CVC" ValidationExpression="^\d{3}$" Display="Dynamic" />
           --%> </div>
          </div>

        </div>
        <div class="column-2">
          <label for="cardnumber">Card Number</label>
          <input type="password" id="cardnumber" maxlength="16"/>
           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorCardNumber" runat="server" ControlToValidate="cardnumber" ErrorMessage="Card Number is required" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="RegularExpressionValidatorCardNumber" runat="server" ControlToValidate="cardnumber" ErrorMessage="Invalid Card Number" ValidationExpression="^\d{16}$" Display="Dynamic" />
        --%>  <span class="info">* CVV or CVC is the card security code, unique three digits number on the back of your card separate from its number.</span>
        </div>
      </div>
    </div>

    <div class="panel-footer">
      <%--<button class="btn back-btn">Back</button>--%>
      <asp:Button ID="Button2" OnClick="Button2_Click" class="btn back-btn" runat="server" Text="Back" />
  
      <%--<button class="btn next-btn">Proceed</button>--%>
      <asp:Button ID="Button1" OnClick="Button1_Click" class="btn next-btn" runat="server" Text="Proceed" />
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="script.js"></script>
    </form>
      
</body>
</html>
