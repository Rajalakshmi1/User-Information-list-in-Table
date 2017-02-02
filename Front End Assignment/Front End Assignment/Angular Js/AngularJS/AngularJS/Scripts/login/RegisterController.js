var app = angular.module("demoApp", []);
app.controller('registerController', registerController);
registerController.$inject = ['$scope', '$location', '$http', '$window','$filter'];

function registerController($scope, $location, $http, $window, $filter) {
    //window.localStorage.removeItem('userslist');
    $scope.items = angular.fromJson(window.localStorage['userslist']) || [];

    /*$scope.users = [{
        uname: '',
        pwd: '',
        firstname: '',
        lastname: '',
        email: '',
        phone: '',
        location: ''
    }];*/
    $scope.alreadyExists = false;
    $scope.add = function (userModel) {
        //var index = $scope.users.indexOf(userModel);
        //$scope.users.splice(index, 1);
        $scope.items.push(angular.copy(userModel))
        window.localStorage.setItem('userslist', angular.toJson($scope.items));
    }
    $scope.remove = function (userModel) {
        var index = $scope.items.indexOf(userModel);
        $scope.items.splice(index, 1);
        window.localStorage.setItem('userslist', angular.toJson($scope.items));
    }

    $scope.return = function () {
       $window.location.href = '/login.aspx';
    };

   


    $scope.Save = function () {
       //window.localStorage[$scope.userModel.uname] = angular.toJson($scope.userModel);
       //alert("Successfully saved");

       
       var user = $scope.userModel;

       var users = angular.fromJson(window.localStorage['userslist']) || [];
       CheckUserExists(users, $scope.userModel.uname);
       if ($scope.alreadyExists == true) {
           alert("user already exists");
       }
       else
       {
           $scope.add(user);
           alert("Successfully saved");
       }
       
        /*
       if (UserExists(users, $scope.userModel.uname)==true)
       {
           alert("user already exists");
       }
       else
       {
           $scope.add(user);
           window.localStorage.setItem('userslist', $scope.items);
           console.log($scope.items);
       }      */

    };
    function CheckUserExists(data, uname) {
        $scope.alreadyExists = false;
        angular.forEach(data, function (value, key) {
            if (value.uname == uname) {
                $scope.alreadyExists = true;
            }
        });        
    }

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

    $scope.Register = function () {
        $window.location.href = '/UserRegister.aspx';
    };*/
}