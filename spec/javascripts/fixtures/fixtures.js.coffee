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
    @fixturesForType(type, fixture)

  addFixture: (type, fixture) ->
    fixtures = @fixturesForType(type)
    fixtures.set(fixture.get('name'), fixture)

  fixturesForType: (type) ->
    map = @get('fixtures')

    fixtures = map.get(type)
    unless fixtures
      fixtures = Ember.Map.create()
      map.set(type, fixtures)
      Fixtures[WZ.typeToString(type).pluralize()] = (name) ->
        fixture = Fixtures.fetch(type, name)
        data = fixture.get('data')
        WZ.store.load(type, data.id, data) unless type.isInStore(data.id)
        WZ.store.find(type, data.id)

    fixtures

  loadAll: (options) ->
    options ?= {}
    now = options.now

    @get('fixtures').forEach(type, fixtures) ->
      type.FIXTURES ?= []
      fixtures.forEach(name, fixture) ->
        data = fixture.get('data')
        type.FIXTURES.pushObject(data)
        if now
          WZ.store.load(type, data.id, data)

window.F = F = Fixtures
