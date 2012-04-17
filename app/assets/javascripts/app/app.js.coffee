window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  #rootElement: '#main'

  run: ->
    @set 'route_manager', WZ.RouteManager.create()
    #@set('vault_controller', WZ.Controllers.Vault.create())
    #@set('home_controller', WZ.Controllers.HomeCon.create())

$ ->
  WZ.run() if $('#jasmine_content').length == 0
