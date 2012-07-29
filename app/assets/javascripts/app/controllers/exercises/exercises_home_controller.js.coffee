WZ.ExercisesHomeController = Em.ArrayController.extend
  content: Ember.A()
  selectedGroup: null

  filter: (event) ->
    kind = $(event.target).html()
    @set('selectedGroup', kind)
    $('#vault-home h3').html(kind)

  all: (event) ->
    @set('selectedGroup', null)
    $('#vault-home h3').html('All')

  filteredGroup: (->
                    selectedGroup = @get('selectedGroup')

                    return @get('content') if !selectedGroup

                    return @get('content').filterProperty('group.name', selectedGroup)
                 ).property('content', 'selectedGroup')

