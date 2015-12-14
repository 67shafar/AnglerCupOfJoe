#Controls the features directive

FeatureCtrl = ($scope, $http)->

  $http.get('assets/fakeModel.json').success (data)->
    $scope.features = data
    return

  return

FeatureCtrl.$inject = ['$scope', '$http']

Featured = ->
  restrict: 'E'
  templateUrl: 'app/components/featured/index.html'
  controller: FeatureCtrl

angular
  .module('AnglerCupOfJoeApp')
  .directive('featured', Featured)
  .controller('FeatureCtrl', FeatureCtrl)