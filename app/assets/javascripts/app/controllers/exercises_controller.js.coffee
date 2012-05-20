WZ.ExercisesController = Ember.ArrayProxy.extend
  view: null
  group: null

  init: ->
    @exercise = WZ.Exercise.createRecord()
    @exercise.set 'name', 'pull off'
    @set 'groups', WZ.GroupsController.create()

