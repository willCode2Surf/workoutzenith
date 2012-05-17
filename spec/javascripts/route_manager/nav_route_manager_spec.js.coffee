describe 'route managers', ->
  @routeManager

  describe 'Nav Route Manager', ->
    beforeEach ->
      Ember.run =>
        @routeManager = WZ.NavRouteManager.create()

    afterEach ->
      @routeManager.destroy() if @routeManager

    it 'should have a render initial view', ->
      expect(@routeManager.get('rootView')).toBeTruthy()
      expect($('header').length).toEqual(1)
