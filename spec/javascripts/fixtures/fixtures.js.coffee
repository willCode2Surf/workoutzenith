Fixture = Ember.Object.extend
  type: null
  name: null

window.Fixtures = Fixtures = Ember.Object.create
  init: ->
    @set 'fixtures', Ember.Map.create()

  add: (type, fixtures) ->
    for name, data of fixtures
      fixture = Fixture.create
        type: type
        name: name
        data: data

      @addFixture(type, fixture)

  fetch: (type, name) ->
    @fixturesForType(type).get(name)

  addFixture: (type, fixture) ->
    fixtures = @fixturesForType(type)
    fixtures.set(fixture.get('name'), fixture)

  fixturesForType: (type) ->
    map = @get('fixtures')

    fixtures = map.get(type)
    unless fixtures
      fixtures = Ember.Map.create()
      map.set(type, fixtures)
      Fixtures[WZ.Model.typeToString(type).pluralize()] = (name) ->
        fixture = Fixtures.fetch(type, name)
        data    = fixture.get('data')
        WZ.store.load(type, data.id, data) unless type.isInStore(data.id)
        WZ.store.find(type, data.id)

    fixtures

  loadAll: (options) ->
    options ?= {}
    now      = options.now

    @get('fixtures').forEach (type, fixtures) ->
      type.FIXTURES ?= []
      fixtures.forEach (name, fixture) ->
        data = fixture.get('data')
        type.FIXTURES.pushObject(data)
        if now
          WZ.store.load(type, data.id, data)

window.F = F = Fixtures

Fixtures.add WZ.Group,
  Abs:
    _id: "50143de626a3187dba000001"
    name: "Abs"
  Arms:
    _id: "50143de626a3187dba000002"
    name: "Arms"
  Back:
    _id: "50143de626a3187dba000003"
    name: "Back"
  Chest:
    _id: "50143de626a3187dba000004"
    name: "Chest"
  Legs:
    _id: "50143de626a3187dba000005"
    name: "Legs"

Fixtures.add WZ.Exercise,
  Abs:
    _id: "50143de626a3187dba000006"
    name: "Abs Exercise"
  Arms:
    _id: "50143de626a3187dba000007"
    name: "Arms Exercise"
  Back:
    _id: "50143de626a3187dba000008"
    name: "Back Exercise"
  Chest:
    _id: "50143de626a3187dba000009"
    name: "Chest Exercise"
  Legs:
    _id: "50143de626a3187dba000010"
    name: "Legs Exercise"

Fixtures.loadAll()
