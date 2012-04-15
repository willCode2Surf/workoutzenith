WZ.RouteManager = Em.RouteManager.extend
  rootElement: '#main'
  init: ->
    @_super()
    @set 'rootView', WZ.Views.Main.create()

