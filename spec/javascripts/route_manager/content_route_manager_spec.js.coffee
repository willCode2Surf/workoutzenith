describe 'router', ->
  describe 'content router', ->
    beforeEach ->
      Ember.run =>
        @router = WZ.Router.create()
        WZ.initialize @router

    it 'should have inject controllers into application', ->
      expect(@router.applicationController).toBeTruthy()
      expect(@router.vaultController).toBeTruthy()
      expect(@router.homeController).toBeTruthy()

    it 'should have a root view', ->
      expect(@router.rootView).toBeTruthy()

# describe 'route managers', ->
#   @routeManager
# 
#   describe 'Content Route Manager', ->
#     beforeEach ->
#       Ember.run =>
#         @routeManager = WZ.ContentRouteManager.create()
# 
#     afterEach ->
#       return if !@routeManager
# 
#       @routeManager.get('rootView').forEachChildView (view) ->
#         view.remove()
#       
#       @routeManager.destroy()
# 
#     it 'should render main section', ->
#       expect(@routeManager.getPath 'currentState.name').toEqual 'home'
#       expect($('#home').length).toEqual(1)
# 
#     it 'should transition to vault index', ->
#       Ember.run =>
#         @routeManager.set 'location', 'vault/index'
# 
#       expect(@routeManager.getPath 'currentState.name').toEqual 'index'
# 
#     it 'should transition to new vault', ->
#       Ember.run =>
        # @routeManager.set 'location', 'vault/new/step1'

      # expect(@routeManager.getPath 'currentState.name').toEqual 'step1'

    # it 'should transition location from addMedia action', ->
    #   Ember.run =>
    #     @routeManager.send 'addMedia'
    #   
    #   expect(@routeManager.getPath 'currentState.name').toEqual 'step2'

      

