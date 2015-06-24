$ ->
  $('#signin-modal').on 'change', ->
    if $(this).is(':checked')
      $('body').addClass 'modal-open'
    else
      $('body').removeClass 'modal-open'

  $('.modal-fade-screen, .modal-close').on 'click', ->
    $('.modal-state:checked').prop('checked', false).change()

  $('.modal-inner').on 'click', (e) ->
    e.stopPropagation()
