WZ.Exercise = WZ.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  group: DS.belongsTo 'WZ.Group', {key: 'group'}
