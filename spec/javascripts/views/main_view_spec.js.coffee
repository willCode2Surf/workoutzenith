describe 'Views', ->
  describe 'Main', ->
    @view

    beforeEach ->
      @view = createView WZ.Views.Main, '#main'

    describe 'show', ->
      it 'should render main view', ->
        expect(@view).toBeTruthy()
      
