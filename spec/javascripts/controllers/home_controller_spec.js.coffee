describe 'controllers', ->
  describe 'Home', ->
    it 'should create the application', ->
      expect(WZ.get 'main_state_manager').toBeTruthy()
