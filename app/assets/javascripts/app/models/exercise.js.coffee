WZ.Exercise = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  group: DS.belongsTo 'WZ.Group'
  observeSaveOnce: (options) ->
    callBack = ->
      debugger
      outcome = 'success'
      if @get('isDirty')
        return if @get 'isValid' #not submitted yet
        outcome = 'error'

      (options[outcome] || Ember.K()).call(@)

      @removeObserver 'isDirty', callBack
      @removeObserver 'isValid', callBack

    @addObserver 'isDirty', callBack
    @addObserver 'isValid', callBack


        
