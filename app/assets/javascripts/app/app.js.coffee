Ember.ENV.CP_DEFAULT_CACHEABLE = true
Ember.ENV.VIEW_PRESERVES_CONTEXT = true
window.WZ = Ember.Application.create
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    WZ.layout.appendTo('body')

    WZ.store = DS.Store.create
      adapter: DS.RESTAdapter.create
        bulkCommit: false
      revision: 4

    return if window.env && window.env == 'jasmine'

    @set 'nav_route_manager', WZ.NavRouteManager.create()

    WZ.set 'router', WZ.Router.create()
    WZ.initialize WZ.get('router')
    WZ.get('router').transitionTo('root')
    WZ.get('router').transitionTo('vault')
    WZ.get('router').transitionTo('new')



