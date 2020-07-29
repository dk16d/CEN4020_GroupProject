<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSight_v1.Account.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/DataTables/dataTables.js"></script>
    <link rel="stylesheet" href="Content/DataTables/datatables.css"/>

    <script>
        $(document).ready(function () {
            $('#mytable').DataTable();
        });
    </script>

    <style type="text/css">
        .auto-style9 {
            height: 10px;
            width: 600px;
        }
        .auto-style10 {
            width: 611px;
        }
        .auto-style11 {
            height: 463px;
            width: 630px;
            position: relative;
            top: 15px;
            left: 0px;
        }
        .auto-style15 {
            width: 600px
        }
        .auto-style16 {
            margin-left: 102px;
        }
        
        .auto-style17 {
            width: 590px;
            height: 38px;
        }

            .auto-style18 {
                width: 600px;
                height: 42px;
            }
            .auto-style19 {
                width: 531px;
                height: 36px;
 
            left: 2px;
        }
            .auto-style21 {
            width: 562px;
            height: 66px;
            position: relative;

            left: 2px;
        }
                #mytable {
        font-family: "Helvetica", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        }

        #mytable td, #mytable th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #mytable tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #mytable tr:hover {
            background-color: #ddd;
        }

        #mytable th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #329977;
            color: white;
        }
            .auto-style22 {
            width: 531px;
        }
        .auto-style24 {
            height: 33px;
        }
        .auto-style25 {
            width: 531px;
            height: 33px;
        }
        .auto-style26 {
            width: 600px;
            height: 36px;
        }
            #Text1 {
            width: 581px;
        }
            </style> 

</head>
<body style="height: 500px; background-color:grey;">

    <form id="form1" runat="server">
    <table style="margin-left:auto;margin-right:auto; background-color: #CCCCCC;"  border="0" class="auto-style11">
        <tr>
        <td class="auto-style10" style="border: 6px inset #329977; padding: 5px; margin: 5px; ">
    <table class="auto-style21">
        
        <tr>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="45px" Width="200px" style="float:Left" >
                    <asp:ListItem Selected="True">Current Websites</asp:ListItem>
                    <asp:ListItem>Website1</asp:ListItem>
                    <asp:ListItem>Website2</asp:ListItem>
                    <asp:ListItem>Website3</asp:ListItem>
                    </asp:DropDownList>
            
                <asp:Button ID="Button1" runat="server" Text="Login/out" Width="86px" style="float:right" CssClass="pull-right" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Manage Alerts" style="float:right" Width="140px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="margin-left:0 auto;margin-right:0 auto;">
                <div style= "max-width: 95%; margin:auto;">
                    <h2 style="margin-left:0 auto;margin-right:0 auto; text-align: center;" class="auto-style17">WebSight</h2>
                    </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                    <asp:TextBox ID="TextEntered" runat="server" placeholder="Enter URL Here" style="text-align:center;" Width="385px" BorderStyle="Groove" CssClass="auto-style16" BackColor="#CCCCCC" BorderColor="#999999" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <br />
                    <br />
            </td>
        </tr>
    </table>
        <table id = "mytable"  style="border-color: #329977; border-style: solid; border-width: 2px;" >
            <thead>
                <tr>
                    <th class="auto-style26">URL</th>
                    <th class="auto-style19">Date Added</th>
                    <th class="auto-style19">Expires</th>
                </tr>
                <tr>
                    <td class="auto-style7">www.Websight.com</td>
                    <td class="auto-style22">10/29/2020</td>
                    <td class="auto-style19">11:12:43</td>
                </tr>
                <tr>
                    <td class="auto-style7">www.Google.com</td>
                    <td class="auto-style22">3/5/2020</td>
                    <td class="auto-style19">23:11:33</td>
                </tr>
                <tr>
                    <td class="auto-style7">www.reddit.com</td>
                    <td class="auto-style22">4/19/2020</td>
                    <td class="auto-style19">04:22:13</td>
                </tr>
                <tr>
                    <td class="auto-style7">www.FSU.com</td>
                    <td class="auto-style22">1/3/2020</td>
                    <td class="auto-style19">EXPIRED</td>
                </tr>
                <tr>
                    <td class="auto-style24">www.Facebook.com</td>
                    <td class="auto-style25">4/28/2020</td>
                    <td class="auto-style19">00:12:53</td>
                </tr>
            </thead>
        </table>
    </td>
    </tr>
    </table>
    </form>

</body>
</html>