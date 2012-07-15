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
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep1'
          addMedia: (router) ->
            router.get('exercisesNewController').connectOutlet 'step', 'exercisesNewStep2'
          save: (e) ->
            alert 'save'
            # exercisesController = e.get 'exercisesController'

            # WZ.store.createRecord WZ.exercise, exercisesController.get 'exercise'

            # WZ.store.commit()
