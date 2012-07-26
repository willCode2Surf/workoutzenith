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
          debugger
          errors = JSON.parse(jqXHR.responseText)
          store.recordWasInvalid(record, errors)

  revision: 4


