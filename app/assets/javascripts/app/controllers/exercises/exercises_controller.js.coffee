WZ.ExercisesController = Ember.ArrayProxy.extend
  view: null
  group: null

  init: ->
    @set 'groups', WZ.GroupsController.create()

