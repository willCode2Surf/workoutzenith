describe 'route manageer', ->
  @routeManager

  describe 'root view', ->
    it 'should have a root view', ->
      Ember.run =>
        @routeManager = WZ.RouteManager.create()
        @routeManager.start()

      console.log $('body').html() + 'some'
      expect(@routeManager.get 'rootView').toBeTruthy()
