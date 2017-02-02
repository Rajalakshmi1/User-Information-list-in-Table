var app = angular.module("demoApp", []);
app.controller('homeController', homeController);
homeController.$inject = ['$scope', '$location', '$http', '$window'];

function homeController($scope, $location, $http, $window) {
    var loggedinuser = sessionStorage.getItem('loggedinuser');
    $scope.username = loggedinuser;
    /*
    $scope.allowedUsers = ["admin", "rajalakshmi", "testuser"];
    $scope.allowedPassword = "admin";
    $scope.Errordisplay = false;

    $scope.submit = function () {

        if ($scope.allowedUsers.indexOf($scope.uname) !== -1 && $scope.allowedPassword == $scope.pwd) {
            $scope.Errordisplay = false;
            $scope.actionPage = "/Welcome.aspx";
        }
        else {
            $scope.Errordisplay = true;
            alert("invalid credentials!! Try again");
        }
    };

    $scope.home = function () {
        $window.location.href = '/Userhome.aspx';
    };*/

    $scope.profileedit = function () {
        $window.location.href = '/ProfileEdit.aspx';
    };
    $scope.messages = function () {
        $window.location.href = '/MessageList.aspx';
    };
    $scope.logout = function () {
        sessionStorage.removeItem('loggedinuser');
        $window.location.href = '/login.aspx';
    };
}