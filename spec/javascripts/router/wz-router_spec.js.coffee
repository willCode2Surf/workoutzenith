describe 'router', ->
  describe 'transitions', ->
    beforeEach ->
      WZ.initialize()

    it 'should transition to home from root', ->
      WZ.router.route '/'
      expect(WZ.router.get('currentState.path')).toEqual 'root.home'

    it 'should transition to vault', ->
      WZ.router.route '/vault'
      expect(WZ.router.get('currentState.path')).toEqual 'root.vault.index'
      
    it 'should transition to step1', ->
      WZ.router.route 'vault/new/step1'
      debugger
      expect(WZ.router.get('currentState.path')).toEqual 'root.vault.new.step1'

