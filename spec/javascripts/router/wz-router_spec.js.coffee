describe 'router', ->
  describe 'content router', ->
    beforeEach ->
      WZ.initialize()
      WZ.router.route '/'

    afterEach ->
      WZ.router.route '/'

    it 'should have a root view', ->
      console.log WZ.router.get('currentState.path')
      expect(WZ.router.get('currentState.path')).toEqual 'root.home'

    it 'should transition to vault', ->
      WZ.router.route '/vault'
      expect(WZ.router.get('currentState.path')).toEqual 'root.vault.index'

    it 'should transition to new vault', ->
      WZ.router.transitionTo 'vault.new'
      expect(WZ.router.get('currentState.path')).toEqual 'root.vault.new'
      
    it 'should transition to new step1', ->
      WZ.router.transitionTo 'vault.new.step1'
      expect(WZ.router.get('currentState.path')).toEqual 'root.vault.new.step1'

