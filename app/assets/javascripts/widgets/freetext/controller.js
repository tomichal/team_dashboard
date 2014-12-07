app.controller("FreetextCtrl", ["$scope", function($scope) {
  var defaults = {
    size_x: 1, size_y: 1
  };

  if (!$scope.widget.id) {
    _.extend($scope.widget, defaults);
  }
}]);