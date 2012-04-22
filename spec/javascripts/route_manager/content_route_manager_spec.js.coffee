describe 'route managers', ->
  @routeManager

  describe 'Content Route Manager', ->
    beforeEach ->
      Ember.run =>
        @routeManager = WZ.ContentRouteManager.create()
        @routeManager.start()

    afterEach ->
      return if !@routeManager

      @routeManager.get('rootView').forEachChildView (view) ->
        view.remove()
      
      @routeManager.destroy()

    it 'should render main section', ->
      expect(@routeManager.getPath 'currentState.name').toEqual 'home'
      expect($('#home').length).toEqual(1)

    it 'should transition to vault index', ->
      Ember.run =>
        @routeManager.set 'location', 'vault/index'

      expect(@routeManager.getPath 'currentState.name').toEqual 'index'

    it 'should transition to new vault', ->
      Ember.run =>
        @routeManager.set 'location', 'vault/new/step1'

      expect(@routeManager.getPath 'currentState.name').toEqual 'step1'

