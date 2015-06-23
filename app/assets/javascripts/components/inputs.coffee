do ->
  onInputFocus = (ev) ->
    classie.add ev.target.parentNode, 'input--filled'

  onInputBlur = (ev) ->
    if ev.target.value.trim() == ''
      classie.remove ev.target.parentNode, 'input--filled'

  if !String::trim
    do ->
      rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g

      String::trim = -> @replace rtrim, ''

  [].slice.call(document.querySelectorAll('input.input-field-kyo')).forEach (inputEl) ->
    if inputEl.value.trim() != ''
      classie.add inputEl.parentNode, 'input--filled'
    inputEl.addEventListener 'focus', onInputFocus
    inputEl.addEventListener 'blur', onInputBlur
