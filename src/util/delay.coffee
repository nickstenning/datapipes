Component = require('../component').Component

class Delayer extends Component
  takes: ''
  emits: ''

  constructor: (@delay) ->

  take: (input) ->
    setTimeout((=> this.emit(input)), @delay)

module.exports = (delay) -> new Delayer(delay)
