Ember.ENV.CP_DEFAULT_CACHEABLE = true
Ember.ENV.VIEW_PRESERVES_CONTEXT = true
window.WZ = Ember.Application.create
  autoinit: false

$ ->
  WZ.initialize()





