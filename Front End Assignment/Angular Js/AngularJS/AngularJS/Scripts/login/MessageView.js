var app = angular.module("demoApp", []);
app.controller('messageviewController', messageviewController);
messageviewController.$inject = ['$scope', '$location', '$http', '$window', '$filter'];

function messageviewController($scope, $location, $http, $window, $filter) {
    //window.localStorage.removeItem('messagelist');
    $scope.items = angular.fromJson(window.localStorage['messagelist']) || [];

    $scope.messageid = sessionStorage.getItem('messageid');
    $scope.OriginalMessage = $filter('filter')($scope.items, { MessageId: $scope.messageid })[0];
    $scope.message = angular.copy($scope.OriginalMessage);
    


    $scope.CreateMessage = function (message) {
       
        $scope.items.push(angular.copy(message));

        window.localStorage.setItem('messagelist', angular.toJson($scope.items));
        
    }
    $scope.remove = function (message) {
        var index = $scope.items.indexOf(message);
        $scope.items.splice(index, 1);
        window.localStorage.setItem('messagelist', angular.toJson($scope.items));       
       
    }
    $scope.view = function (message) {

        alert(angular.toJson(message));
    }

    $scope.delete = function () {
        var message = $scope.message;
        $scope.remove(message);
        $scope.return();
    }

    $scope.return = function () {
        $window.location.href = '/MessageList.aspx';
    };

    $scope.Important = function () {
        var message = $scope.message
        message.Important = 1;
        $scope.remove($scope.OriginalMessage);
        $scope.CreateMessage(angular.copy(message));
        window.localStorage.setItem('messagelist', angular.toJson($scope.items));
        alert("message updated");
    };


    function findMaxMessageId() {
        var newList = angular.fromJson(window.localStorage['messagelist']) || [];
        var result = null;
        var returnInt = 0;
        for (var i = 0; i < newList.length; i++) {
            var message = newList[i];
            if (result == null || message.MessageId > result.MessageId) {
                result = message;
            }
        }
        if (result == null) {
            returnInt = 1;
        }
        else {
            returnInt = result.MessageId + 1;
        }
        return (returnInt);
    }


    $scope.Save = function () {
        var message = $scope.message;

        var messages = angular.fromJson(window.localStorage['messagelist']) || [];
        $scope.add(message);
        alert("Successfully saved");
    };
}