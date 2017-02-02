var app = angular.module("demoApp", []);
app.controller('profileeditController', profileeditController);
profileeditController.$inject = ['$scope', '$location', '$http', '$window', '$filter'];

function profileeditController($scope, $location, $http, $window, $filter) {

    $scope.items = angular.fromJson(window.localStorage['userslist']) || [];

    var loggedinuser = sessionStorage.getItem('loggedinuser');
    $scope.username = loggedinuser;

    $scope.Originaluser = $filter('filter')($scope.items, { uname: loggedinuser })[0];
    $scope.userModel = angular.copy($scope.Originaluser);
    

    $scope.Save = function () {
        window.localStorage.removeItem(sessionStorage.getItem('loggedinuser'));
        window.localStorage[$scope.userModel.uname] = angular.toJson($scope.userModel);
        
        $scope.remove($scope.Originaluser);
        $scope.add($scope.userModel);
        sessionStorage.setItem('loggedinuser', $scope.userModel.uname);
        alert("Successfully saved");
        $scope.actionPage = "/Welcome.aspx";
    };

    $scope.remove = function (userModel) {
        var index = $scope.items.indexOf(userModel);
        $scope.items.splice(index, 1);
        window.localStorage.setItem('userslist', angular.toJson($scope.items));
    }

    $scope.add = function (userModel) {
        $scope.items.push(angular.copy(userModel))
        window.localStorage.setItem('userslist', angular.toJson($scope.items));
    }
    $scope.return = function () {
        $window.location.href = '/Welcome.aspx';
    };
}