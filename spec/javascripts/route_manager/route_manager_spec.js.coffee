describe 'route managers', ->
  @routeManager

  describe 'Nav Route Manager', ->
    beforeEach ->
      Ember.run =>
        @routeManager = WZ.NavRouteManager.create()
        @routeManager.start()

    afterEach ->
      @routeManager.destroy() if @routeManager

    it 'should have a render initial view', ->
      expect(@routeManager.get('rootView')).toBeTruthy()
      expect($('header').length).toEqual(1)

  describe 'Content Route Manager', ->
    beforeEach ->
      Ember.run ->
        @routeManager = WZ.ContentRouteManager.create()
        @routeManager.start()

    afterEach ->
      #console.log @routeManager.get('rootView').get('childViews').get 'length'
      @routeManager.destroy() if @routeManager

    it 'should render main section', ->
      expect($('#home').length).toEqual(1)

    #it 'should render new view', ->
      #@routeManager.set 'location', 'main/vault/index'

      #console.log @routeManager.getPath 'currentState.name'
