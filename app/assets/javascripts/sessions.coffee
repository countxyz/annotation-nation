$ ->
  $('.session').on('ajax:success', (e, data, status, xhr) ->
    location.reload()
  ).on 'ajax:error', (e, xhr, status, error) ->
    $( '<p>Form Errors. Try again</p>' ).insertAfter( 'h1' )
