WZ.ExercisesNewStep1View = Em.View.extend
  templateName: 'app/templates/vault/step1'
  didInsertElement: ->
    $('#exercise_name').focus()
  contentBinding: 'controller.exercise'


