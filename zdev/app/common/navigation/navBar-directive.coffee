#This controls the navigation directive. Currently has no controller
#functionality.

NavBarCtrl = ->
  return

NavBar = ->
  restrict: 'E'
  templateUrl: 'app/common/navigation/index.html'
  controller: NavBarCtrl

angular
  .module("AnglerCupOfJoeApp")
  .directive("navBar", NavBar)
  .controller("NavBarCtrl", NavBarCtrl)
