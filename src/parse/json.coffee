Component = require('../component').Component

class JSONParser extends Component
  takes: 'data.string'
  emits: 'data'
  
  take: (input) ->
    this.emit(JSON.parse(input))

module.exports = new JSONParser
