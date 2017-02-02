<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileEdit.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/ProfileEdit.js"></script>
</head>
<body>
    
    <div ng-app="demoApp" ng-controller="profileeditController">
            <form name="profileeditform"  action="{{actionPage}}">

        <h1>Editing {{username}} profile</h1>
        <table>
                <tr><td>UserName:</td><td><input type="text" ng-model="userModel.uname" id="txtuname" placeholder="Enter username" required/></td></tr>
                <tr><td>Password:</td><td><input type="password" ng-model="userModel.pwd" id="txtPassword" placeholder="Enter Password" required/></td></tr>
                <tr><td>Firstname:</td><td><input type="text" ng-model="userModel.firstname" id="txtFirstname" placeholder="Enter Firstname"  required/></td></tr>
                <tr><td>Lastname:</td><td><input type="text" ng-model="userModel.lastname" id="txtLastname" placeholder="Enter Lastname"  required/></td></tr>
                <tr><td>Email:</td><td><input type="text" ng-model="userModel.email" id="txtemail" placeholder="Enter email"  required/></td></tr>
                <tr><td>Phone:</td><td><input type="text" ng-model="userModel.Phone" id="txtPhone" placeholder="Enter Phone" required/></td></tr>
                <tr><td>Location:</td><td><input type="text" ng-model="userModel.Location" id="txtLocation" placeholder="Enter Location" required/></td></tr>
                <tr><td><input type="submit" ng-click="Save()" value="Save"/></td>
                    <td><input type="button" ng-click="return()" value="Return" /></td>
                </tr>
            </table>
    </form>
            </div>

</body>
</html>
