#Controls the homepage

HomeCtrl = ($scope, Page) ->
  Page.setTitle "Home"
  return

HomeCtrl.$inject = ['$scope','Page']

angular
  .module('AnglerCupOfJoeApp')
  .controller('HomeCtrl', HomeCtrl)