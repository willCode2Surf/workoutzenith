describe 'route manageer', ->
  @routeManager

  beforeEach ->
    @routeManager = WZ.RouteManager.create()

  describe 'root view', ->
    it 'should have a root view', ->
      #Ember.run ->
      @routeManager.start()

      console.log $('#main').html() + 'some'
      expect(@routeManager.get 'rootView').toBeTruthy()
