WZ.Views.Nav = Ember.View.extend
  templateName: 'app/templates/nav/nav'

WZ.layout =  Ember.ContainerView.create
  childViews: ['navigationArea', 'contentArea']
  navigationArea: Ember.ContainerView.create({})
  contentArea: Ember.ContainerView.create({})

WZ.NavRouteManager = Ember.StateManager.extend
  rootView: WZ.layout.get 'navigationArea'
  initialState: "nav"

  nav: Ember.ViewState.create
    view: WZ.Views.Nav
