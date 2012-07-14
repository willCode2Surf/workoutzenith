Ember.ENV.CP_DEFAULT_CACHEABLE = true
Ember.ENV.VIEW_PRESERVES_CONTEXT = true
window.WZ = Ember.Application.create
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    WZ.store = DS.Store.create
      adapter: WZ.DataAdapter.create
        bulkCommit: false
      revision: 4

    return if window.env && window.env == 'jasmine'

    WZ.set 'Router', WZ.Router.create()




