window.env = 'jasmine'

beforeEach ->
  $.ajaxSetup
    cache: false

  Ember.test = true

  $('#jasmine_content').html('').append('<div id="main"></div>')
  
$ ->
  $('body').html('').append($('<div id="jasmine_content"></div>'))

afterEach ->
  $('.ember-view').remove()

window.createView = (klass, selector) ->
  view = klass.create()

  Ember.run ->
    view.appendTo selector

  view
