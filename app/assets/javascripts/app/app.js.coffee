window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  ready: ->
    return if window.env && window.env == 'jasmine'
    console.log "shoule not get here when testing"
    @set 'route_manager', WZ.RouteManager.create()
    @get('route_manager').start()
    #@set('vault_controller', WZ.Controllers.Vault.create())
    #@set('home_controller', WZ.Controllers.HomeCon.create())

