#Controls the homepage

MenuCtrl = ($scope, $http) ->
  $scope.limit = 8
  $scope.more = false
  $scope.buttonText = "more"
  $scope.direction = "down"
  $http.get('assets/fakeModel.json').success (data)->
    $scope.menuItems = data
    return

  $scope.toggleLoadMore = ->
    $scope.more = !$scope.more
    if $scope.more && $scope.menuItems?
      $scope.limit = $scope.menuItems.length
      $scope.buttonText = "less"
      $scope.direction = "up"
    else
      $scope.limit = 8
      $scope.buttonText = "more"
      $scope.direction = "down"
    return

  return

MenuCtrl.$inject = ['$scope', '$http']

Menu = ->
  restrict: 'E'
  templateUrl: 'app/components/menu/index.html'
  controller: MenuCtrl

angular
  .module('AnglerCupOfJoeApp')
  .controller('MenuCtrl', MenuCtrl)
  .directive('menu', Menu)