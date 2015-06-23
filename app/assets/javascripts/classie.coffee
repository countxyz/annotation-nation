'use strict'

do (window) ->

  classReg = (className) ->
    new RegExp('(^|\\s+)' + className + '(\\s+|$)')

  toggleClass = (elem, c) ->
    fn = if hasClass(elem, c) then removeClass else addClass
    fn elem, c
    return

  hasClass = undefined
  addClass = undefined
  removeClass = undefined

  if 'classList' of document.documentElement

    hasClass = (elem, c) ->
      elem.classList.contains c

    addClass = (elem, c) ->
      elem.classList.add c
      return

    removeClass = (elem, c) ->
      elem.classList.remove c
      return

  else

    hasClass = (elem, c) ->
      classReg(c).test elem.className

    addClass = (elem, c) ->
      if !hasClass(elem, c)
        elem.className = elem.className + ' ' + c
      return

    removeClass = (elem, c) ->
      elem.className = elem.className.replace(classReg(c), ' ')
      return

  classie =
    hasClass: hasClass
    addClass: addClass
    removeClass: removeClass
    toggleClass: toggleClass
    has: hasClass
    add: addClass
    remove: removeClass
    toggle: toggleClass

  if typeof define == 'function' and define.amd
    define classie
  else
    window.classie = classie
  return
