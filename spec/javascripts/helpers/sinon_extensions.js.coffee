$.extend sinon.fakeServer, respondWithJson:  (url, responseObject) ->
  @respondWith url, [200, {"Content-Type": "application/json"}, JSON.stringify(responseObject)]

