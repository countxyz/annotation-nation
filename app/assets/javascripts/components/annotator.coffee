$ ->
  document.getElementById('content').addEventListener 'mouseup', ->
    selection = document.getSelection()
    console.log selection.toString()
