#Controls the homepage

HomeCtrl = ($scope, Page, $css) ->
  Page.setTitle "Home"
  $css.bind {href: '/assets/css/components/home/style.css'}, $scope
  return

HomeCtrl.$inject = ['$scope','Page', '$css']

angular
  .module('AnglerCupOfJoeApp')
  .controller('HomeCtrl', HomeCtrl)