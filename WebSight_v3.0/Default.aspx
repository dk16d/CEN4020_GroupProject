<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSight_v1.Account.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/DataTables/dataTables.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
    <link rel="stylesheet" href="Content/DataTables/datatables.css"/>

    <script>
        var app = angular.module("Links", ["ngRoute"]);
        app.controller('mainCtrl', function ($scope, $http) {
            var dataset = []

            $(document).ready(function () {
                $('#mytable').DataTable({

                });
            });

            $http({
                method: 'GET',
                url: 'api/Link/Get'
            }).then(function success(response) {
                $scope.links = response.data;
                console.log(response.data);

                for (i = 0; i < $scope.links.length; i++) {
                    var arr = [Object.values($scope.links[i])];
                    dataset.push(arr);
                }
                console.log(dataset);


            }, function failure() {

            });


            $scope.addRow = function () {
                if ($scope.URL != undefined && $scope.Nick != undefined) {
                    var link = new Object();
                    var update = -1;
                    link.URL = $scope.URL;
                    link.Nick = $scope.Nick;
                    console.log(link.Nick);

                    for (i = 0; i < $scope.links.length; i++) {
                        if ($scope.links[i].URL == link.URL) {
                            link.Id = $scope.links[i].Id
                            update = i;
                            break;

                        }
                    }


                    $http({
                        method: 'POST',
                        url: 'api/Link/AddOrUpdate',
                        data: link
                    }).then(function success(response) {
     
                        if (update != -1) {
                            $scope.links[i] = response.data;
                        }

                        else {
                            $scope.links.push(response.data);
                        }

                    }, function failure() {

                    });

                    // CLEAR TEXTBOX.
                    $scope.URL = null;
                    $scope.Nick = null;
                }
            };
        });
    </script>

    <style type="text/css">

        ul
        {
        list-style-type: none;
        }

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
        }

            .auto-style18 {
                width: 600px;
                height: 42px;
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
            .auto-style27 {
            width: 500px;
        }
            .auto-style28 {
            width: 188px;
        }
            .auto-style29 {
            width: 186px;
        }
            </style> 

</head>
<body style="height: 500px; background-color:grey;">
    <div ng-app="Links" ng-controller="mainCtrl">
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
                <asp:Button ID="Button2" runat="server" Text="Manage Alerts" style="float:right" Width="140px" />
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
                 <ul><li style="text-align: center;" dir="ltr">URL</li>
            <li><input type="text" data-ng-model="URL" style="text-align: center;" class="auto-style27" /></li>
        </ul>
                     <ul><li style="text-align: center;">Nickname</li>
            <li><input type="text" data-ng-model="Nick" style="text-align: center;" class="auto-style27" /></li>
        </ul>
                 <ul><li><button data-ng-click="addRow()" class="auto-style28"> Add Row </button></li> 
                     <li><button data-ng-click="removeRow()" class="auto-style29">Remove Row</button></li></ul>
            </td>
        </tr>
    </table>
        <table id = "mytable" class ="display" style="border-color: #329977; border-style: solid; border-width: 2px;" >
            <thead>
            <tr>
                <th>ID</th>
                <th>URL</th>
                <th>Nickname</th>
            </tr>

            <tr data-ng-repeat="link in links">
                <td><label>{{link.Id}}</label></td>
                <td><label>{{link.URL}}</label></td>
                <td><label>{{link.Nickname}}</label></td>
                <td><input type="checkbox" data-ng-model="link.Remove" /></td>
            </tr>
        </thead>
    </table>
    </td>
    </tr>
    </table>
    </form>
     </div>
    <ul><li><button data-ng-click="addRow()"> Add Row </button></li> </ul>

</body>
</html>