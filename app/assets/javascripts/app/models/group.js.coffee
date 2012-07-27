WZ.Group = WZ.Model.extend
  primaryKey: '_id'
  name: DS.attr 'string'
  exercises: DS.hasMany('WZ.Exercise')
