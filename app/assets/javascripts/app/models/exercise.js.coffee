WZ.Exercise = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  group: DS.belongsTo 'WZ.Group', {embedded: true}


