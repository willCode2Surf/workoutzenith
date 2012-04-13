beforeEach ->
  Ember.test = true
  $('#jasmine_content').append('<div id="main"></div>')

$ ->
  $('body').append($('<div id="jasmine_content"></div>'))
