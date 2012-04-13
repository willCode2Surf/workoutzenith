window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  StateManagers: {}
  Views: {}

  rootElement: $('#main')

  run: ->
    #@set('vault_controller', WZ.Controllers.Vault.create())
    #@set('home_controller', WZ.Controllers.HomeCon.create())
    @set 'main_state_manager', WZ.StateManagers.Main.create()

$ ->
  WZ.run()
