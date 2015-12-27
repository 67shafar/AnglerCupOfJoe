#This controls the footer directive. Currently has no controller
#functionality.

FooterCtrl = ->
  return

Footer = ->
  restrict: 'E'
  templateUrl: 'app/common/footer/view.html'
  controller: FooterCtrl

angular
  .module("AnglerCupOfJoeApp")
  .directive("footerDir", Footer)
  .controller("FooterCtrl", FooterCtrl)