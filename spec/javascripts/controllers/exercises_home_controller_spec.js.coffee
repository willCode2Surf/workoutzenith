describe 'controllers', ->
  describe 'ExercisesHomeController', ->
    beforeEach ->
      @controller = WZ.ExercisesHomeController.create()
      @controller.set 'content', Ember.A()
      # debugger
      @controller.set 'content', F.fixturesForType(WZ.Group)
      # @controller.set 'content', Test.Factory.exercises()

    it 'should load all exercises', ->
      expect(@controller.get('filteredGroup.length')).toEqual(5)
      expect(@controller.get('filteredHeading')).toEqual 'All - (5)'

    it 'should load Abs exercises', ->
      @controller.set 'selectedGroup', 'Abs'

      expect(@controller.get('filteredGroup.length')).toEqual(1)
      expect(@controller.get('filteredHeading')).toEqual 'Abs - (1)'

    it 'should load Arms exercises', ->
      @controller.set 'selectedGroup', 'Arms'

      expect(@controller.get('filteredGroup.length')).toEqual(1)
      expect(@controller.get('filteredHeading')).toEqual 'Arms - (1)'

    it 'should load back exercises', ->
      @controller.set 'selectedGroup', 'Back'

      expect(@controller.get('filteredGroup.length')).toEqual(1)
      expect(@controller.get('filteredHeading')).toEqual 'Back - (1)'

    it 'should load Chest exercises', ->
      @controller.set 'selectedGroup', 'Chest'

      expect(@controller.get('filteredGroup.length')).toEqual(1)
      expect(@controller.get('filteredHeading')).toEqual 'Chest - (1)'

    it 'should load legs exercises', ->
      @controller.set 'selectedGroup', 'Legs'

      expect(@controller.get('filteredGroup.length')).toEqual(1)
      expect(@controller.get('filteredHeading')).toEqual 'Legs - (1)'
