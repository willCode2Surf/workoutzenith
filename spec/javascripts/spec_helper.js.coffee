beforeEach ->
  Ember.test = true
  $('#jasmine_content').append('<div id="main"></div>')

window.createView = (klass, selector) ->
  view = klass.create()

  Ember.run ->
    view.appendTo selector

  view

$ ->
  $('body').append($('<div id="jasmine_content"></div>'))
