WZ.Exercise = WZ.Model.extend
  primaryKey: '_id'
  name: DS.attr 'string'
  description: DS.attr 'string'
  group: DS.belongsTo('WZ.Group', {key: 'group', embedded: true})
