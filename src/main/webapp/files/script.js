var app = angular.module('limit', []);

app.directive('bufferedScroll', function ($parse) {
    return function ($scope, element, attrs) {
      var handler = $parse(attrs.bufferedScroll);
      element.scroll(function (evt) {
        var scrollTop    = element[0].scrollTop,
            scrollHeight = element[0].scrollHeight,
            offsetHeight = element[0].offsetHeight;
        if (scrollTop === (scrollHeight - offsetHeight)) {
          $scope.$apply(function () {
            handler($scope);
          });
        }
      });
    };
  });
  
app.controller('example', function($scope, $http){
  $scope.items = [];
  for (var i = 0; i < 100; i++) { 
    //$scope.items.push({ id: i, value: 'val ' + i});
	  $http.get('http://localhost:8080/spring-mvc-angular/mvc/api/' + i).success(function(data) {
          $scope.items.push(data);
      });
  }
  
  $scope.increaseLimit = function () {
    if ($scope.limit < $scope.items.length) {
      $scope.limit += 15;
    }
  };
});