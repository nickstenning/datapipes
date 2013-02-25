Component = require('../component').Component

class Sampler extends Component
  takes: ''
  emits: ''

  constructor: (@rate) ->

  take: (input) -> 
    if Math.random() < @rate
      this.emit(input)

module.exports = (rate) -> new Sampler(rate)
