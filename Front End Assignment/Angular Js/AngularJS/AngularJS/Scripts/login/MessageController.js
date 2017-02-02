var app = angular.module("demoApp", []);
app.controller('messageController', messageController);
messageController.$inject = ['$scope', '$location', '$http', '$window', '$filter'];

function messageController($scope, $location, $http, $window, $filter) {
    //window.localStorage.removeItem('messagelist');
    $scope.items = angular.fromJson(window.localStorage['messagelist']) || [];
    //$scope.message.senderImage = "http://simpleicon.com/wp-content/uploads/user1.png";
    //$scope.message.RecipientImage = "http://simpleicon.com/wp-content/uploads/user1.png";
    $scope.todayDate = new Date();
    $scope.messageId = findMaxMessageId();

    $scope.CreateMessage = function () {
        var message = $scope.message;
        $scope.items.push(angular.copy(message));
        
        window.localStorage.setItem('messagelist', angular.toJson($scope.items));
        $scope.message.MessageId = findMaxMessageId();
        $scope.message.CreatedDate = new Date();
    }
    $scope.remove = function (message) {        
        var index = $scope.items.indexOf(message);
        $scope.items.splice(index, 1);
        window.localStorage.setItem('messagelist', angular.toJson($scope.items));
        $scope.message.MessageId = findMaxMessageId();
        $scope.message.CreatedDate = new Date();
    }
    $scope.view = function (message) {
        sessionStorage.setItem('messageid', message.MessageId);
        $window.location.href = '/MessageView.aspx';
    }

    $scope.return = function () {
        $window.location.href = '/Welcome.aspx';
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
        if (result == null)
        {
            returnInt = 1;
        }
        else
        {
            returnInt = result.MessageId+1;
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