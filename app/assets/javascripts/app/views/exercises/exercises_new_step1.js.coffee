WZ.ExercisesNewStep1View = Em.View.extend
  templateName: 'app/templates/vault/step1'
  controllerBinding: 'WZ.exercisesNewStep1Controller'
  didInsertElement: ->
    $('input[type=text]').focus()
  contentBinding: 'controller.exercise'


