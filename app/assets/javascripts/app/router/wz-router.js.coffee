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

    newExercise: (e) ->
      alert 'got here'
    #     e.transitionTo 'vault'
    #     e.transitionTo 'new'


    # vault: Ember.State.extend
    #   route: '/vault'
    #   setupControllers: (router) ->
    #     console.log 'in vault'
    #     appController = router.get 'applicationController'

    #     exercisesController = router.get 'exercisesController'

    #     appController.set 'view', Ember.View.create
    #                                 templateName: 'app/templates/vault/main',
    #                                 controller: exercisesController
    #     
    #     router.transitionTo 'index'

    #   index: Ember.State.extend
    #     route: '/'
    #     setupControllers: (router) ->
    #       console.log 'in vault.index'
    #       
    #       exercisesController = router.get 'exercisesController'

    #       exercisesController.set 'view', Ember.View.create
    #                                         templateName: 'app/templates/vault/home'

    #   new: Ember.State.extend
    #     route: '/new'
    #     setupControllers: (router) ->
    #       console.log 'in vault.new'
    #       exercisesController = router.get 'exercisesController'

    #       exercisesController.set 'view', Ember.View.create
    #                                         controller: exercisesController
    #                                         templateName: 'app/templates/vault/step1'
    #                                         contentBinding: 'controller.exercise'
    #                                         didInsertElement: ->
    #                                           $('#exercise_name').focus()

    #     addMedia: (e) ->
    #       exercisesController = e.get 'exercisesController'

    #       exercisesController.set 'view', Ember.View.create
    #                                         templateName: 'app/templates/vault/step2'


    #     save: (e) ->
    #       exercisesController = e.get 'exercisesController'

    #       WZ.store.createRecord WZ.exercise, exercisesController.get 'exercise'

    #       WZ.store.commit()





# WZ.ContentRouteManager = Em.RouteManager.extend
#   rootView: WZ.layout.get 'contentArea'
#   initialState: 'main.home'
#   enableLogging: false
# 
#   main: Ember.ViewState.create
#     route: 'home'
#     view: Ember.View.create
#       templateName: 'app/templates/home/main'
# 
#     home: Ember.ViewState.create
#       view: Ember.View.create
#         templateName: 'app/templates/home/home'
# 
#   vault: Ember.ViewState.create
#     route: 'vault'
#     view: Ember.View.create
#       templateName: 'app/templates/vault/main'
# 
#     index: Ember.ViewState.create
#       route: 'index'
#       enter: (manager, transition) ->
#         @_super(manager, transition)
#       view: Ember.View.create
#         templateName: 'app/templates/vault/home'
#     new: Ember.ViewState.create
#       route: 'new'
#       view: Ember.View.create
#         templateName: 'app/templates/vault/new'
#       step1: Ember.ViewState.create
#         route: 'step1'
#         view: Ember.View.create
#           templateName: 'app/templates/vault/step1'
# 
#         addMedia: (manager, context) ->
#           manager.set 'location', 'vault/new/step2'
# 
#       step2: Ember.ViewState.create
#         route: 'step2'
#         view: Ember.View.create
#           templateName: 'app/templates/vault/step2'
