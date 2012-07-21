$ ->
  $.ajaxSetup
    contentType: "application/json; charset=UTF-8"
    dataType: 'json'
    headers:
      "X-CSRF-Token": $("meta[name='csrf-token']").attr('content')
