<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AngularJS._Default" %>

<html>
<head>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/login/loginController.js"></script>
</head>
    <body>
        <div ng-app="demoApp"  ng-controller="loginController">
        <h1>Login AngularJS</h1>
        <form name="loginform" ng-submit="loginform.$valid && submit()" action="{{actionPage}}">
            <table>
                <tr><td>UserName:</td><td><input type="text" ng-model="uname" id="txtUserName" placeholder="Enter username" required/></td></tr>
                <tr><td>Password:</td><td><input type="password" ng-model="pwd" id="txtPassword" placeholder="Enter Password" required/></td></tr>
                <tr><td><input type="submit" id="btnLogin" value ="Login" /></td>
                    <td><input type="button" ng-click="Register()" id="btnRegister" value ="Register New User" /></td>
                </tr>
                <tr></td></tr>
                <tr><td colspan="2"><span ng-model="errorMessage" ng-show="Errordisplay">Incorrect credentials !! try again</span></td></tr>
            </table>
        </form>
            </div>
    </body>
</html>
