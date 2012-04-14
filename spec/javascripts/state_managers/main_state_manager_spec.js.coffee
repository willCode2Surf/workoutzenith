describe 'state managers', ->
  describe 'main', ->
    it 'should have a root element', ->
      state_manager = null

      Ember.run ->
        state_manager = WZ.StateManagers.Main.create()

      expect(state_manager.get 'currentState').toBeTruthy()
