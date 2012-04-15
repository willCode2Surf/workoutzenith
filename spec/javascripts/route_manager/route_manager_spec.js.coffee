describe 'route manageer', ->
  @routeManager

  beforeEach ->
    @routeManager = WZ.RouteManager.create()

  describe 'root view', ->
    it 'should have a root view', ->
      console.log $('#main').html() + 'tits'
      expect(@routeManager.rootElement).toBeTruthy()
