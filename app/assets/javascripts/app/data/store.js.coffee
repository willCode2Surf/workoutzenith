WZ.store = DS.Store.create
  adapter: DS.RESTAdapter.create
    bulkCommit: false
    createRecord: (store, type, record) ->
      root = this.rootForType(type)

      data = {}
      data[root] = record.toJSON()

      @ajax this.buildURL(root), "POST"
        data: data
        success: (json) ->
          @sideload(store, type, json, root)
          store.didCreateRecord(record, json[root])
        error: (jqXHR, statusText, error )  ->
          store.recordWasInvalid(record, JSON.parse(jqXHR.responseText).errors)

  revision: 4


