WZ.StateManagers.Main = Ember.StateManager.extend
  rootElement: '#main'
  
  init: ->
    @_super()

  start: Ember.ViewState.create
          view: Ember.View.create
            templateName: 'app/templates/home/main'
