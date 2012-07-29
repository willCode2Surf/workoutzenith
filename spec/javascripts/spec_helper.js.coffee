window.env = 'jasmine'

beforeEach ->
  $.ajaxSetup
    cache: false

  Ember.test = true

  $('#jasmine_content').append('<div id="main"></div>')
  
  alert Test.Factory.exercises().get('length')
$ ->
  $('body').html('').append($('<div id="jasmine_content"></div>'))

window.createView = (klass, selector) ->
  view = klass.create()

  Ember.run ->
    view.appendTo selector

  view
