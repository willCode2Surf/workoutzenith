WZ.Model = DS.Model.extend
  primaryKey: '_id'
  observeSaveOnce: (options) ->
    callBack = ->
      outcome = 'success'
      if @get('isDirty')
        return if @get 'isValid' #not submitted yet
        outcome = 'error'

        WZ.store.rollback()

        return if !@get('errors')

        errorMessages = for name, error of @get('errors')
                                  "#{name} #{error}"

        @set 'errorMessages', errorMessages

        for key in @get('errors')
          console.log @get('errors')[key]


      (options[outcome] || Ember.K()).call(@)

      @removeObserver 'isDirty', callBack
      @removeObserver 'isValid', callBack

    @addObserver 'isDirty', callBack
    @addObserver 'isValid', callBack

  generateErrorSummary: ->
    return "" if @get('errorMessages').length == 0

    html = "<ul class='error'>"
    for error in @get 'errorMessages'
      html += "<li>#{error}</li>"

    html += "</ul>"
    html

