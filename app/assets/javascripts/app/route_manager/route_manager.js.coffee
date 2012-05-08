WZ.Views.Nav = Ember.View.extend
  templateName: 'app/templates/nav/nav'

WZ.layout =  Ember.ContainerView.create
  childViews: ['navigationArea', 'contentArea']
  navigationArea: Ember.ContainerView.create({})
  contentArea: Ember.ContainerView.create({})

WZ.NavRouteManager = Em.RouteManager.extend
  rootView: WZ.layout.get 'navigationArea'
  initialState: "nav"

  nav: Ember.ViewState.create
    view: WZ.Views.Nav

WZ.ContentRouteManager = Em.RouteManager.extend
  rootView: WZ.layout.get 'contentArea'
  initialState: 'main.home'
  enableLogging: false

  main: Ember.ViewState.create
    route: 'home'
    view: Ember.View.create
      templateName: 'app/templates/home/main'

    home: Ember.ViewState.create
      view: Ember.View.create
        templateName: 'app/templates/home/home'

  vault: Ember.ViewState.create
    route: 'vault'
    view: Ember.View.create
      templateName: 'app/templates/vault/main'

    index: Ember.ViewState.create
      route: 'index'
      enter: (manager, transition) ->
        @_super(manager, transition)
        #console.log 'in here for sure'
      view: Ember.View.create
        templateName: 'app/templates/vault/home'
    new: Ember.ViewState.create
      route: 'new'
      view: Ember.View.create
        templateName: 'app/templates/vault/new'
      step1: Ember.ViewState.create
        route: 'step1'
        view: Ember.View.create
          templateName: 'app/templates/vault/step1'

        addMedia: (manager, context) ->
          manager.set 'location', 'vault/new/step2'

      step2: Ember.ViewState.create
        route: 'step2'
        view: Ember.View.create
          templateName: 'app/templates/vault/step2'
