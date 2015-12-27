#Creates a factory which holder variables and functions that pertain to
#All pages, and that all page controllers may need access to.

PageFactory = ->
  title = 'AnglerCupOfJoeApp'

  title: ->
    title
  setTitle: (newTitle)->
    title = newTitle

angular
  .module('AnglerCupOfJoeApp')
  .factory('Page', PageFactory)
