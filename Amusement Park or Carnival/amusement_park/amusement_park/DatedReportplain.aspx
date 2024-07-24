<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatedReportplain.aspx.cs" Inherits="amusement_park.DatedReportplain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">
       .auto-style2 {
    width: 441px;
    font-size: 1.5rem;
}

   </style>
     <link href="css/bootstrap.min.css" rel="stylesheet" />
 <link href="datatable/css/cdn.datatables.net_1.13.6_css_jquery.dataTables.min.css" rel="stylesheet" />
 <link href="datatable/css/cdn.datatables.net_buttons_2.4.1_css_buttons.dataTables.min.css" rel="stylesheet" />
      <script src="datatable/js/code.jquery.com_jquery-3.7.0.js"></script>
     <script src="datatable/js/cdn.datatables.net_1.13.6_js_jquery.dataTables.min.js"></script>
     <script src="datatable/js/cdn.datatables.net_buttons_2.4.1_js_dataTables.buttons.min.js"></script>
     <script src="datatable/js/cdnjs.cloudflare.com_ajax_libs_jszip_3.10.1_jszip.min.js"></script>
     <script src="datatable/js/cdnjs.cloudflare.com_ajax_libs_pdfmake_0.1.53_pdfmake.min.js"></script>
     <script src="datatable/js/cdnjs.cloudflare.com_ajax_libs_pdfmake_0.1.53_vfs_fonts.js"></script>
     <script src="datatable/js/cdn.datatables.net_buttons_2.4.1_js_buttons.html5.min.js"></script>
     <script src="datatable/js/cdn.datatables.net_buttons_2.4.1_js_buttons.print.min.js"></script>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server" class="">
        Date-wise Report
        <div>
           
    

            <table class="auto-style1">
 <tr>
     <td class="auto-style2">&nbsp;</td>
     <td>
     <asp:Label ID="Label3" runat="server" Text="Enter the Customer ID : "></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     </td>
 </tr>
 <tr>
     
     <table>
         <tr>
             <td>
                 
     <asp:Label ID="Label1" runat="server" Text="Initial Date : "></asp:Label>
     <asp:Calendar ID="Calendar1" OnSelectionChanged="cal1" runat="server"></asp:Calendar>
             </td>
             <td>
                   <asp:Label ID="Label2" runat="server" Text="Final Date : "></asp:Label>
  <asp:Calendar ID="Calendar2" OnSelectionChanged="cal2" runat="server"></asp:Calendar>
             </td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     

   
     <asp:Button ID="Button1" OnClick="button1_click1" runat="server" Text="Submit" />

     <td class="auto-style2">&nbsp;
     
         <asp:Repeater ID="Repeater1" runat="server">
             <HeaderTemplate>
                 <table border="1"  id="example" class="table table-striped table-fixed table-dark"  >
                     <thead>
                         <tr>
                         <th>Booking ID</th> 
                         <th>Date</th>
                        
                         </tr></thead>
                     <tbody>
             </HeaderTemplate>
              <ItemTemplate>
                 <tr>
                     <td><%# Eval("bid") %></td> 
                     <td><%# Eval("fdate") %></td> 
                       </tr>
                    
             </ItemTemplate>
              <FooterTemplate>
                  </tbody>
                 </table><blocked-overlay><div class="blockedOverlayWrapper" style="position: absolute; top: 0px; left: 0px; width: 979px; height: 659px; pointer-events: none;"><blocked-overlay-rect height="0.20001220703125" width="979" top="658.7999877929688" left="0"><br class="Apple-interchange-newline"><div class="blockedOverlayRect" style="position: absolute; cursor: not-allowed; background-color: rgba(0, 0, 0, 0.3); pointer-events: auto; top: 658.8px; left: 0px; width: 979px; height: 0.200012px;"></div></blocked-overlay-rect></div></blocked-overlay><selector-parent-decorator></selector-parent-decorator><selector-insertion-decorator isvisible=""><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"></span><br class="Apple-interchange-newline">
             </FooterTemplate>
         </asp:Repeater>
         </td>
 </table>
        </div>
    </form>
</body>
</html>
