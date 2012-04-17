WZ.RouteManager = Em.RouteManager.extend
  init: ->
    @_super()
    @set 'rootView', WZ.Views.Main.create()
    @get('rootView').appendTo 'body'

