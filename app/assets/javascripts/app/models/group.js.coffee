WZ.Group = DS.Model.extend WZ.Helpers.Common,
  primaryKey: 'id'
  id: DS.attr 'number'
  name: DS.attr 'string'

WZ.Group.reopenClass
  url: '/groups/'
