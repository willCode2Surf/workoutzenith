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
            exercise.setProperties {name: 'Bicep curl', description: 'Barbell bicep curl'}
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep1', exercise
          save: (router) ->
            exercise = router.getPath('exercisesNewStep1Controller.content')
            alert exercise.get 'description'
            debugger 
            WZ.store.commit()
        step2: Ember.Route.extend
          route: '/step2'
          connectOutlets: (router, event) ->
            exercise = router.getPath('exercisesNewStep1Controller.content')
            debugger
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep2', exercise

