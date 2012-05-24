WZ.GroupsController = Ember.ArrayProxy.extend
  group: null
  content: []
  init: ->
    @set 'content', WZ.store.findAll WZ.Group
    # @set 'content', [WZ.Group.createRecord({id: 1, name: "Abs"}), WZ.Group.createRecord({id: 2, name: "Arms"})]
  # content: [
  #   # WZ.Group.createRecord({{}})
  #   # WZ.Group.createRecord({id: 1, name: "Abs"})
  #   # WZ.Group.createRecord({id: 2, name: "Arms"})
  #   # WZ.Group.createRecord({id: 3, name: "Back"})
  #   # WZ.Group.createRecord({id: 4, name: "Chest"})
  #   # WZ.Group.createRecord({id: 5, name: "Legs"})
  # ]
