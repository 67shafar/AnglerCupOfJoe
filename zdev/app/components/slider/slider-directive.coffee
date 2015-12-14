#Controls the slider

SliderCtrl = ->
  return

Slider = ->
  restrict: 'E'
  templateUrl: 'app/components/slider/index.html'
  controller: SliderCtrl

angular
  .module('AnglerCupOfJoeApp')
  .directive('slider', Slider)
  .controller('SliderCtrl', SliderCtrl)