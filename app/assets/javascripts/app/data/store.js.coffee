DS.RESTAdapter.map 'WZ.Exercise',
  primaryKey: '_id'
DS.RESTAdapter.map 'WZ.Group',
  primaryKey: '_id'
WZ.store = DS.Store.create
  revision: 7
  adapter: DS.RESTAdapter.create
    bulkCommit: false

#   adapter: DS.FixtureAdapter.create
#     plurals: {}
#     pluralize: (name) ->
#       @plurals[name] || name + "s"

  # revision: 4


