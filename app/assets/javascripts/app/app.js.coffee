window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    return if window.env && window.env == 'jasmine'
    WZ.layout.appendTo('body')
    @set 'nav_route_manager', WZ.NavRouteManager.create()
    @get('nav_route_manager').start()

    @set 'content_route_manager', WZ.ContentRouteManager.create()
    @get('content_route_manager').start()
    #@get('content_route_manager').set 'location', 'main.vault.index'


