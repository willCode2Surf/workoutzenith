WZ.DataAdapter = DS.Adapter.extend
  findAll: (store, type)  ->
    debugger
    success = (data, status, xhr) ->
      debugger
      data = JSON.parse(data)
      store.loadMany(type, data)
      store.typeMapFor(type).findAllCache.set('isLoaded', true)

    $.ajax
      type: 'GET'
      url: type.url
      success: success
      error: (responseData, textStatus, errorThrown) =>
        console.log 'get failed'

