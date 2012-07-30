window.Test = {}

Test.Factory = 
  groups: ->
    groups = [{_id:"50143de626a3187dba000001", name:"Abs"},
              {_id:"50143de626a3187dba000002", name:"Arms"},
              {_id:"50143de626a3187dba000003", name:"Back"},
              {_id:"50143de626a3187dba000004", name:"Chest"},
              {_id:"50143de626a3187dba000005", name:"Legs"}]
    WZ.store.loadMany(WZ.Group, groups)
    WZ.store.findMany(WZ.Group, groups.mapProperty('_id'))
  exercises: ->
    exercises = Ember.A()
    exercises.pushObject {_id:"1",name:"Abs exercise",description:"description",group:{"_id":"50143de626a3187dba000001","name":"Abs"}}
    exercises.pushObject {_id:"2",name:"Arms exercise",description:"description",group:{"_id":"50143de626a3187dba000002","name":"Arms"}}
    exercises.pushObject {_id:"3",name:"Back exercise",description:"description",group:{"_id":"50143de626a3187dba000003","name":"Back"}}
    exercises.pushObject {_id:"4",name:"Chest exercise",description:"description",group:{"_id":"50143de626a3187dba000004","name":"Chest"}}
    exercises.pushObject {_id:"5",name:"Legs exercise",description:"description",group:{"_id":"50143de626a3187dba000005","name":"Legs"}}
    WZ.store.loadMany(WZ.Exercise, exercises)
    ret = Ember.A()
    ret.pushObject WZ.store.find(WZ.Exercise, "1")
    ret.pushObject WZ.store.find(WZ.Exercise, "2")
    ret.pushObject WZ.store.find(WZ.Exercise, "3")
    ret.pushObject WZ.store.find(WZ.Exercise, "4")
    ret.pushObject WZ.store.find(WZ.Exercise, "5")
    ret
