WZ.DataAdapter = DS.Adapter.extend
  findAll: (store, type)  ->
    success = (data, status, xhr) ->
      store.loadMany(type, data)
      store.typeMapFor(type).findAllCache.set('isLoaded', true)

    $.ajax
      type: 'GET'
      url: type.url
      success: success
      error: (responseData, textStatus, errorThrown) =>
        console.log 'get failed'

  createRecord: (store, type, model) ->
    debugger
    url = type.collectionUrl
    $.ajax
      data:
        resource: model.get('data')
      dataType: 'json'
      type: 'POST'
      url: url
      success: (data) ->
        console.log data
        store.didCreateModel model, data
