window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    WZ.layout.appendTo('body')
    return if window.env && window.env == 'jasmine'
    @set 'nav_route_manager', WZ.NavRouteManager.create()
    @get('nav_route_manager').start()

    @set 'content_route_manager', WZ.ContentRouteManager.create()
    @get('content_route_manager').start()


