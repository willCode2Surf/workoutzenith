WZ.ExercisesHomeController = Em.ArrayController.extend
  content: Ember.A()
  isEmpty: Ember.computed ->
    @get('content.length') == 0
