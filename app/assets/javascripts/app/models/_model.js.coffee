WZ.Model = DS.Model.extend
  observeSaveOnce: (options) ->
    callBack = ->
      outcome = 'success'
      if @get('isDirty')
        return if @get 'isValid' #not submitted yet
        outcome = 'error'

        return if !@get('errors')

        debugger

        errorMessages = ages = for name, error of @get('errors')
                                  "#{name} #{error}"

        @set 'errorMessages', errorMessages

        for key in @get('errors')
          console.log @get('errors')[key]


      (options[outcome] || Ember.K()).call(@)

      @removeObserver 'isDirty', callBack
      @removeObserver 'isValid', callBack

    @addObserver 'isDirty', callBack
    @addObserver 'isValid', callBack