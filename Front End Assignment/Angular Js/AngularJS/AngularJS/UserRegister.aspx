<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/RegisterController.js"></script>
</head>
<body>
    <form name="registerform" action="{{actionPage}}">

        <div ng-app="demoApp" ng-controller="registerController">
            <table>
                <tr>
                    <td>UserName:</td>
                    <td>
                        <input type="text" ng-model="userModel.uname" id="txtUserName" name="txtUserName" placeholder="Enter username" value="Rajalakshmi" required /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <input type="password" ng-model="userModel.pwd" id="txtPassword" placeholder="Enter Password" value="test" required /></td>
                </tr>
                <tr>
                    <td>Firstname:</td>
                    <td>
                        <input type="text" ng-model="userModel.firstname" id="txtFirstname" placeholder="Enter Firstname" value="Rajalakshmi" required /></td>
                </tr>
                <tr>
                    <td>Lastname:</td>
                    <td>
                        <input type="text" ng-model="userModel.lastname" id="txtLastname" placeholder="Enter Lastname" value="T" required /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <input type="text" ng-model="userModel.email" id="txtemail" placeholder="Enter email" value="test@test.com" required /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        <input type="text" ng-model="userModel.Phone" id="txtPhone" placeholder="Enter Phone" value="7328577894" required /></td>
                </tr>
                <tr>
                    <td>Location:</td>
                    <td>
                        <input type="text" ng-model="userModel.Location" id="txtLocation" placeholder="Enter Location" value="NJ" required /></td>
                </tr>
                <tr>
                    <td>
                        <input type="button" ng-click="Save()" value="Save" /></td>
                         <td><input type="button" ng-click="return()" value="Return" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table border="1">
                            <tr>
                                <th>Username</th>
                                <th>Password</th>
                                <th>FirstName</th>
                                <th>LastName</th>
                                <th>Email</th>
                                <th>PhoneNumber</th>
                                <th>Location</th>
                            </tr>
                            <tr ng-repeat="user in items">
                                <td>{{user.uname}}</td>
                                <td>{{user.pwd}}</td>
                                <td>{{user.firstname}}</td>
                                <td>{{user.lastname}}</td>
                                <td>{{user.email}}</td>
                                <td>{{user.Phone}}</td>
                                <td>{{user.Location}}</td>
                                <td><input type="button" ng-click="remove(user)" value="Delete" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
