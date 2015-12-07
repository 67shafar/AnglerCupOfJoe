#Creates the AnglerCupOfJoeApp module
#Access it in other files with angular.module 'AnglerCupOfJoe'
#Coffeescript automatically wraps this in an IIFE

config = ($routeProvider)->
  $routeProvider
    .when '/' ,
      templateUrl: 'app/components/home/index.html'
      controller: 'HomeCtrl'
    .when '/contact',
      templateUrl: 'app/components/contact/index.html'
      controller: 'ContactCtrl'
    .when '/statistics',
      templateUrl: 'app/components/statistics/index.html'
      controller: 'StatisticsCtrl'
    .when '/articles',
      templateUrl: 'app/components/articles/index.html'
      controller: 'ArticlesCtrl'
  return

config.$inject = ['$routeProvider']

MainCtrl = ($scope, Page)->
  $scope.page = Page
  return

MainCtrl.$inject = ['$scope', 'Page']

angular
  .module('AnglerCupOfJoeApp', ['ngRoute'])
  .config(config)
  .controller('MainCtrl', MainCtrl)