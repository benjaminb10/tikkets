@ActivityPoller =
  poll: ->
    setTimeout @request, 3000

  request: ->
    $.ajax({ url: $('#activities').data('url'), dataType: "script" })

->
  if $('#activities').length > 0
    ActivityPoller.poll