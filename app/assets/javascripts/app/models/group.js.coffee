WZ.Group = DS.Model.extend
  primaryKey: '_id'
  name: DS.attr 'string'

WZ.Group.reopenClass
  url: '/groups/'
