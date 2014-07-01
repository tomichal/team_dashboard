app.controller("CiCtrl", ["$scope", function($scope) {

  var defaults = {
    size_x: 2,
    size_y: 1,
    name: "CI Build Status",
    update_interval: 10,
    source: "jenkins"
  };
  $.each(window.system.sources.ci.jenkins.custom_fields, function(i, el){
    defaults[el["name"]] = el["value"];
  });

  if (!$scope.widget.id) {
    _.extend($scope.widget, defaults);
  }

}]);