WZ.ExercisesHomeController = Em.ArrayController.extend
  content: Ember.A()
  isEmpty: Ember.computed ->
    @get('content.length') == 0

  arms: ( -> 
          @filterProperty('group.name', 'Arms')
        ).property('@each.isArms')

  abs:  ( -> 
          @filterProperty('group.name', 'Abs')
        ).property('@each.isAbs')

  back: ( -> 
          @filterProperty('group.name', 'Back')
        ).property('@each.isBack')

  chest: ( -> 
          @filterProperty('group.name', 'Chest')
        ).property('@each.isChest')

  legs: ( -> 
          @filterProperty('group.name', 'Legs')
        ).property('@each.isLegs')
  # isEmpty: ( ->
  #           @get('content.length') == 0
  #          ).property('length')
