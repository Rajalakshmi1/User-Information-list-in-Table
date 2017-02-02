<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageView.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/MessageView.js"></script>
</head>
<body>
   <form name="messageviewform" action="{{actionPage}}">

        <div ng-app="demoApp" ng-controller="messageviewController">
            <table border="1">
                <tr>
                    <td>MessageId:</td>
                    <td><span>{{message.MessageId}}</span></td>
                </tr>
                <tr>
                    <td>sender:</td>
                    <td><span>{{message.sender}}</span></td>
                </tr>
                <tr>
                    <td>senderImage:</td>
                    <td><span><img src="{{message.senderImage}}" alt="" border=3 height=25 width=25></span></td>
                </tr>
                <tr>
                    <td>Recipient:</td>
                    <td><span>{{message.Recipient}}</span></td>
                </tr>
                <tr>
                    <td>RecipientImage:</td>
                    <td><span><img src="{{message.RecipientImage}}" alt="" border=3 height=25 width=25></span></td>
                </tr>
                 <tr>
                    <td>Title:</td>
                    <td><span>{{message.Title}}</span></td>
                </tr>
                  <tr>
                    <td>Description:</td>
                    <td><span>{{message.Description}}</span></td>
                </tr>
                  <tr>
                    <td>Important:</td>
                    <td><span>{{message.Important}}</span></td>
                </tr>
                  <tr>
                    <td>CreatedDate:</td>
                    <td><span>{{message.CreatedDate}}</span></td>
                </tr>
               
                <tr>
                    <td colspan="2">
                        <input type="button" ng-click="Reply()" value="Reply" />
                         <input type="button" ng-click="return()" value="Return" />
                    <input type="button" ng-click="Important()" value="Mark as Important" />
                    <input type="button" ng-click="delete()" value="Delete" /></td>

                </tr>
                
            </table>


        </div>
    </form>
</body>
</html>
