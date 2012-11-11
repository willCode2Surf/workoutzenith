WZ.Group = WZ.Model.extend
  name: DS.attr 'string'
  exercises: DS.hasMany('WZ.Exercise')
