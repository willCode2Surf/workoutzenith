Ember.ENV.CP_DEFAULT_CACHEABLE = true
Ember.ENV.VIEW_PRESERVES_CONTEXT = true
window.WZ = Ember.Application.create
  ready: ->
    WZ.store = DS.Store.create
      adapter: DS.RESTAdapter.create
        bulkCommit: false
      revision: 4


$ ->
  WZ.initialize()





