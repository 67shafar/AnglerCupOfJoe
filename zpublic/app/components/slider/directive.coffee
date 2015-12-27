#Controls the slider

SliderCtrl = ->
  return

Slider = ->
  restrict: 'E'
  templateUrl: 'app/components/slider/view.html'
  controller: SliderCtrl
  css: '/assets/css/components/slider/style.css'

angular
  .module('AnglerCupOfJoeApp')
  .directive('slider', Slider)
  .controller('SliderCtrl', SliderCtrl)