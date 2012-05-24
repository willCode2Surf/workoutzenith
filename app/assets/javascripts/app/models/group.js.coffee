WZ.Group = DS.Model.extend WZ.Helpers.Common,
  primaryKey: '_id'
  name: DS.attr 'string'

WZ.Group.reopenClass
  url: '/groups/'
