WZ.GroupsController = Ember.ArrayController.extend
  content: []
  init: ->
    @set 'content', WZ.store.findAll(WZ.Group)
