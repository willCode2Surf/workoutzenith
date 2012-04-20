WZ.Views.Nav = Ember.View.extend
  templateName: 'app/templates/home/main'

WZ.layout =  Ember.ContainerView.create
  childViews: ['navigationArea', 'contentArea']
  navigationArea: Ember.ContainerView.create({})
  contentArea: Ember.ContainerView.create({})
    

WZ.RouteManager = Em.RouteManager.extend
  rootView: WZ.layout.get('navigationArea')
  initialState: "nav"

  nav: Ember.ViewState.create
    route: '/'
    view: WZ.Views.Nav.create()
