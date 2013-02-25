Component = require('../component').Component

class Logger extends Component
  takes: ''
  emits: ''

  take: (input) ->
    console.log(input)
    this.emit(input)

module.exports = new Logger
