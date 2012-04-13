describe 'controllers', ->
  describe 'Home', ->
    it 'should create the application', ->
      expect(WZ.get 'home_controller').toBeTruthy()
