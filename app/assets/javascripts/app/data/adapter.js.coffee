WZ.DataAdapter = DS.Adapter.extend
  createRecord: (store, type, record) ->
    root = @rootForType(type)

    data = {}
    data[root] = record.toJSON()

    @ajax @buildURL(root), "POST"
      data: data,
      success: (json) ->
        @sideload(store, type, json, root)
        store.didCreateRecord(record, json[root])
