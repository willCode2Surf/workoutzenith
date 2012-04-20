window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    return if window.env && window.env == 'jasmine'
    @set 'route_manager', WZ.RouteManager.create()
    @get('route_manager').start()

