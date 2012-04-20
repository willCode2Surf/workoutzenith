describe 'route manageer', ->
  @routeManager

  beforeEach: ->

  describe 'root view', ->
    it 'should have a render initial view', ->
      Ember.run =>
        WZ.layout.appendTo('body')
        @routeManager = WZ.RouteManager.create()
        @routeManager.start()
      
      console.log "childViews = #{@routeManager.getPath('rootView.childViews.length')}"

      expect(@routeManager.get('rootView')).toBeTruthy()
      expect($('header').length).toEqual(1)

