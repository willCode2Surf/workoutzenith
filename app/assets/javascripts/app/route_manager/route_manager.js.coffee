
WZ.RouteManager = Em.RouteManager.extend
  initialState: "nav"

  nav: Ember.ViewState.create
    view: Ember.View.create
            templateName: 'app/templates/home/main'
  #init: ->
    #@_super()
    #@set 'rootView', WZ.Views.Main.create()
    #@get('rootView').appendTo 'body'

