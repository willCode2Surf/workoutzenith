describe 'route managers', ->
  @routeManager

  describe 'Nav Route Manager', ->
    it 'should have a render initial view', ->
      Ember.run =>
        WZ.layout.appendTo('body')
        @routeManager = WZ.NavRouteManager.create()
        @routeManager.start()
      
      console.log "childViews = #{@routeManager.getPath('rootView.childViews.length')}"

      expect(@routeManager.get('rootView')).toBeTruthy()
      expect($('header').length).toEqual(1)

  describe 'Content Route Manager', ->
    it 'it should render main section', ->
      Ember.run =>
        @routeManager = WZ.ContentRouteManager.create()
        @routeManager.start()

      expect($('#home').length).toEqual(1)


