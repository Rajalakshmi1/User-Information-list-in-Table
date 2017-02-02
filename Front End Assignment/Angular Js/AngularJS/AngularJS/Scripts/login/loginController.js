var app = angular.module("demoApp", []);
app.controller('loginController', loginController);
loginController.$inject = ['$scope', '$location', '$http', '$window'];

function loginController($scope, $location, $http, $window) {
    
    $scope.Errordisplay = false;

    $scope.submit = function () {
        
        Authenticate($scope.uname, $scope.pwd);
        if ($scope.isAuthenticated == true)
        {
            $scope.Errordisplay = false;
            sessionStorage.setItem('loggedinuser', $scope.uname);
            $scope.actionPage = "/Welcome.aspx";
        }
        else {
            $scope.Errordisplay = true;
            alert("invalid credentials!! Try again");
        }
       /* var user = angular.fromJson(window.localStorage[$scope.uname]);
        if (user != null)
        {
            if(user.pwd == $scope.pwd)
            {
                $scope.Errordisplay = false;
                sessionStorage.setItem('loggedinuser', user.uname);
                $scope.actionPage = "/Welcome.aspx";
            }
            else {
                $scope.Errordisplay = true;
                alert("invalid Password!! Try again");
            }
        }       
        else
        {
            $scope.Errordisplay = true;
            alert("invalid username!! Try again");
        }*/
    };

    $scope.Register = function () {
        $window.location.href = '/UserRegister.aspx';
    };

    function Authenticate(uname, pwd) {
        $scope.isAuthenticated = false;
        var users = angular.fromJson(window.localStorage['userslist']) || [];
        angular.forEach(users, function (value, key) {
            if (value.uname == uname && value.pwd == pwd) {
                $scope.isAuthenticated = true;
            }
        });
    }
}