describe 'route managers', ->
  @routeManager

  afterEach: ->
    console.log 'in after each'
    @routeManager.destroy() if @routeManager
    $('body').clear()


  #describe 'Nav Route Manager', ->
    #it 'should have a render initial view', ->
      #Ember.run =>
        #WZ.layout.appendTo('body')
        #@routeManager = WZ.NavRouteManager.create()
        #@routeManager.start()
      
      #expect(@routeManager.get('rootView')).toBeTruthy()
      #expect($('header').length).toEqual(1)

  #describe 'Content Route Manager', ->
    #it 'it should render main section', ->
      #Ember.run =>
        #@routeManager = WZ.ContentRouteManager.create()
        #@routeManager.start()

      #expect($('#home').length).toEqual(1)

  describe 'When transitioning to the view', ->
    it 'should render new view', ->
      Ember.run =>
        @routeManager = WZ.ContentRouteManager.create()
        @routeManager.start()
        @routeManager.goToState 'main.home'
        debugger
        @routeManager.goToState 'main.vault.index'

      console.log @routeManager.getPath 'currentState.name'
      console.log $('#main').length
      expect($('#vault-home').length).toEqual(1)
