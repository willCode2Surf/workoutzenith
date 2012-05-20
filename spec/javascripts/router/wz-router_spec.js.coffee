describe 'router', ->
  describe 'content router', ->
    beforeEach ->
      Ember.run =>
        @router = WZ.Router.create()
        WZ.initialize @router
        @router.transitionTo 'root'

    it 'should inject controllers into router', ->
      expect(@router.applicationController).toBeTruthy()
      expect(@router.exercisesController).toBeTruthy()
      expect(@router.homeController).toBeTruthy()

    it 'should have a root view', ->
      expect(@router.getPath('currentState.path')).toEqual 'root.index'

    it 'should transition to vault', ->
      Ember.run =>
        @router.transitionTo 'vault'
      expect(@router.getPath('currentState.path')).toEqual 'root.vault.index'

    it 'should transition to new vault', ->
      Ember.run =>
        @router.transitionTo 'vault.new'
      expect(@router.getPath('currentState.path')).toEqual 'root.vault.new'
      

