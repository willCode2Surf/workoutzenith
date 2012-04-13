window.WZ = Ember.Application.create
  Controllers: {}
  Helpers: {}
  Models: {}
  Views: {}

  run: ->
    #@set('vault_controller', WZ.Controllers.Vault.create())
    @set('home_controller', WZ.Controllers.Home.create())


$ ->
  WZ.run()
