WZ.GroupsController = Ember.ArrayProxy.extend
  group: null
  content: []
  init: ->
    @set 'content', WZ.Group.all()

