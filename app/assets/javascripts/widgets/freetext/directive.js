app.directive("freetext", ["$http", "FreetextModel", function($http, FreetextModel) {
  function link(scope, element, attrs) {
    //function onSuccess(data) {
    //  scope.counter = data.value;
    //}
    //
    //function update() {
    //  return FreetextModel.success(onSuccess);
    //}
    //
    //scope.counter = 0;
    //scope.init(update);
  }

  return {
    templateUrl: "templates/widgets/freetext/show.html",
    link: link
  };
}]);