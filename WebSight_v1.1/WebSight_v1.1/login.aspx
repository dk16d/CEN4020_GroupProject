<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Websight_v1.Register.Login" %>

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
                
        .auto-style17 {
            width: 590px;
            height: 38px;
            color: #000000;
            text-align: center;
            background-color: #CCCCCC;
        }

            .auto-style18 {
                width: 600px;
                height: 42px;
            text-align: center;
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
            &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="text-align: center" Text="Back " Width="82px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="margin-left:0 auto;margin-right:0 auto;">
                <div style= "max-width: 95%; margin:auto;">
                    <h2 style="margin-left:0 auto;margin-right:0 auto; " class="auto-style17">WebSight</h2>
                    </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                    Username:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Password:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
            </td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="36px" style="color: #000000; font-weight: 700; background-color: #00FFCC" Text="Register" Width="110px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="36px" style="text-align: center; font-weight: 700; background-color: #00FFCC" Text="Login" Width="114px" OnClick="Button2_Click" />
    &nbsp;</td>
    </tr>
    </table>
    </form>

</body>
</html>
