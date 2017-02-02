<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageList.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/MessageController.js"></script>
</head>
<body>
   <form name="messageform" action="{{actionPage}}">

        <div ng-app="demoApp" ng-controller="messageController">
            <table>
                <tr>
                    <td>MessageId:</td>
                    <td>
                        <input type="text" ng-model="message.MessageId" id="txtMessageId" ng-init="message.MessageId=messageId" name="txtMessageId" ReadOnly /></td>
                </tr>
                <tr>
                    <td>sender:</td>
                    <td>
                        <input type="text" ng-model="message.sender" id="txtsender" name="txtsender"  placeholder="Enter sender" required /></td>
                </tr>
                <tr>
                    <td>senderImage:</td>
                    <td>
                        <input type="text" ng-model="message.senderImage" id="txtsenderImage" ng-init="message.senderImage='http://simpleicon.com/wp-content/uploads/user1.png'" size="50" placeholder="Enter senderImage" required /></td>
                </tr>
                <tr>
                    <td>Recipient:</td>
                    <td>
                        <input type="text" ng-model="message.Recipient" id="txtRecipient" placeholder="Enter Recipient" required /></td>
                </tr>
                <tr>
                    <td>RecipientImage:</td>
                    <td>
                        <input type="text" ng-model="message.RecipientImage" id="txtRecipientImage" ng-init="message.RecipientImage='http://simpleicon.com/wp-content/uploads/user1.png'" size="50"  placeholder="Enter RecipientImage" required /></td>
                </tr>
                <tr>
                    <td>Title:</td>
                    <td>
                        <input type="text" ng-model="message.Title" id="txtTitle" placeholder="Enter Title" size="100"  required /></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                    <textarea ng-model="message.Description" id="txtDescription" name="txtDescription" cols="40" rows="5" placeholder="Enter Description"  required></textarea>
                        </td>

                </tr>
                <tr>
                    <td>Important:</td>
                    <td>
                        <input type="text" ng-model="message.Important" id="txtImportant" placeholder="Enter Important"  required /></td>
                </tr>
                 <tr>
                    <td>CreatedDate:</td>
                    <td>
                        <input type="text" ng-model="message.CreatedDate" ng-init="message.CreatedDate=todayDate" size="100"  id="txtCreatedDate" placeholder="Enter CreatedDate"  required /></td>
                </tr>
                <tr>
                    <td>
                        <input type="button" ng-click="CreateMessage()" value="CreateMessage" /></td>
                         <td><input type="button" ng-click="return()" value="Return" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table border="1">
                            <tr>
                                <th>MessageId</th>
                                <th>sender</th>
                                <th>senderImage</th>
                                <th>Recipient</th>
                                <th>RecipientImage</th>                                
                                <th>Title</th>
                                <th>Description</th>
                                <th>Important</th>
                                <th>CreatedDate</th>
                            </tr>
                            <tr ng-repeat="message in items">
                                <td>{{message.MessageId}}</td>
                                <td>{{message.sender}}</td>
                                <td><img src="{{message.senderImage}}" alt="" border=3 height=25 width=25></td>
                                <td>{{message.Recipient}}</td>
                                <td><img src="{{message.RecipientImage}}" alt="" border=3 height=25 width=25></td>
                                <td>{{message.Title}}</td>
                                <td>{{message.Description}}</td>
                                <td>{{message.Important}}</td>
                                <td>{{message.CreatedDate}}</td>
                                <td><input type="button" ng-click="view(message)" value="View" /><input type="button" ng-click="remove(message)" value="Delete" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>

