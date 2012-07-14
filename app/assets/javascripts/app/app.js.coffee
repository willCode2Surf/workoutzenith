Ember.ENV.CP_DEFAULT_CACHEABLE = true
Ember.ENV.VIEW_PRESERVES_CONTEXT = true
window.WZ = Ember.Application.create()

$ ->
  WZ.store = DS.Store.create
    adapter: WZ.DataAdapter.create
      bulkCommit: false
    revision: 4
  WZ.initialize()





