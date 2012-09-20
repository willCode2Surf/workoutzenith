Utils = {}
Utils.Inflector = Em.Object.create
  pluralize: (str) ->
    "#{str}s"

  singularize: (str) ->
    str.replace(/s$/, '')

  capitalize: (str) ->
    str.replace(/^([a-z])/, (match) -> match.toUpperCase() )

  humanize: (lowerCaseAndUnderscoredWord) ->
    result = lowerCaseAndUnderscoredWord.toString()
    result = result.replace(/_id$/, "").
                    replace(/_/g, ' ').
                    replace /([a-z\d]*)/gi, (match) ->
                      match.toLowerCase()

String.prototype.pluralize = ->
  Utils.Inflector.pluralize(this)

String.prototype.singularize = ->
  Utils.Inflector.singularize(this)

String.prototype.humanize = ->
  Utils.Inflector.humanize(this)

String.prototype.capitalize = ->
  Utils.Inflector.capitalize(this)
