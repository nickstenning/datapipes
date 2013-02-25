events = require('events')

class Component extends events.EventEmitter
  emits: null
  takes: null

  emit: (val) ->
    super 'data', val

  notify: (listener) ->
    this.on 'data', (val) -> 
      listener.take(val)

  canTakeFrom: (component) ->
    if !component
      return false

    takes = if @takes then @takes.split('.') else []
    input = if component.emits then component.emits.split('.') else []
    input = input.slice(0, takes.length)

    if input.join('.') == takes.join('.')
      return true
    else
      return false

exports.Component = Component
