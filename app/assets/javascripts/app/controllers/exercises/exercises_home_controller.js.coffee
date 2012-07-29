WZ.ExercisesHomeController = Em.ArrayController.extend({
  content: Ember.A()
  selectedGroup: null

  filter: (event) ->
    kind = $(event.target).html()
    @set('selectedGroup', kind)

  all: (event) ->
    @set('selectedGroup', null)

  filteredGroup: (->
                    selectedGroup = @get('selectedGroup')

                    return @get('content') if !selectedGroup

                    return @get('content').filterProperty('group.name', selectedGroup)
                 ).property('content', 'selectedGroup')

  filteredHeading: ( ->
                    "#{@get('selectedGroup') || 'All'} - (#{@get('filteredGroup.length')})"

                   ).property('filteredGroup', 'filteredGroup.length')
})

