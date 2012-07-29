window.Test = {}

Test.Factory = 
  groups: ->
    groups = [{_id:"50143de626a3187dba000001", name:"Abs"},
              {_id:"50143de626a3187dba000002", name:"Arms"},
              {_id:"50143de626a3187dba000003", name:"Back"},
              {_id:"50143de626a3187dba000004", name:"Chest"},
              {_id:"50143de626a3187dba000005", name:"Legs"}]
    WZ.store.loadMany(WZ.Group, groups)
    WZ.store.findMany(WZ.Group, groups.mapProperty('_id').uniq())
  exercises: ->
    exercises = [{_id:"50143de626a3187dba000068",name:"Abs exercise",description:"description",group:{"_id":"50143de626a3187dba000001","name":"Abs"}}
      {_id:"50143de626a3187dba000069",name:"Arms exercise",description:"description",group:{"_id":"50143de626a3187dba000002","name":"Arms"}}
      {_id:"50143de626a3187dba000066",name:"Back exercise",description:"description",group:{"_id":"50143de626a3187dba000003","name":"Back"}}
      {_id:"50143de626a3187dba000065",name:"Chest exercise",description:"description",group:{"_id":"50143de626a3187dba000004","name":"Chest"}}
      {_id:"50143de626a3187dba000064",name:"Legs exercise",description:"description",group:{"_id":"50143de626a3187dba000005","name":"Legs"}}]
    WZ.store.loadMany(WZ.Exercise, exercises)
    WZ.store.findMany(WZ.Exercise, exercises.mapProperty('_id').uniq())

