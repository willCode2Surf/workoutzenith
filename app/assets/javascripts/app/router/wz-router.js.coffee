WZ.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'
  root: Em.Route.extend
    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'home'
    home: Em.Route.extend
      route: '/home'
      connectOutlets: (router, event) ->
        router.get('applicationController').connectOutlet 'home'
        router.get('homeController').connectOutlet 'bottombar', 'bottombar'

    vault: Ember.Route.extend
      route: '/vault'
      connectOutlets: (router, event) ->
        router.get('applicationController').connectOutlet 'exercises'
      index: Ember.Route.extend
        route: '/'
        connectOutlets: (router, event) ->
          router.get('exercisesController').connectOutlet 'main', 'exercisesHome'
      new: Ember.Route.extend
        route: '/new'
        connectOutlets: (router, event) ->
          router.get('exercisesController').connectOutlet 'main', 'exercisesNew'
        step1: Ember.Route.extend
          route: '/step1'
          connectOutlets: (router, event) ->
            exercise = WZ.Exercise.createRecord()
            exercise.setProperties {name: 'Barbell bicep curl', description: 'Barbell bicep curl'}
            router.get('exercisesNewStep1Controller').set 'groups', WZ.store.find(WZ.Group)
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep1', exercise
          save: (router) ->
            debugger
            exercise = router.get('exercisesNewStep1Controller.content')
            success = ->
              $('.status').html('<ul><li class="success">The exercise has successfully been created</i></ul>')
            error = () ->
              $('.status').html(@generateErrorSummary())

            exercise.observeSaveOnce({success: success, error: error})
            WZ.store.commit()
        step2: Ember.Route.extend
          route: '/step2'
          connectOutlets: (router, event) ->
            exercise = router.get('exercisesNewStep1Controller.content')
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep2', exercise

