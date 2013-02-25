class Pipeline

  constructor: ->
    @components = []

  do: (component) ->
    @takes = component.takes
    @components.push(component)
    this

  then: (component) ->
    prev = @components[@components.length - 1]

    if !prev
      console.error "cannot call then() without having first called do()"
      return false

    if !component.canTakeFrom(prev)
      console.error "#{component.__proto__.constructor.name} can't receive input from #{prev.__proto__.constructor.name}"
      return false

    prev.notify(component)
    @components.push(component)
    this

  take: (val) ->
    @components[0].take(val)

exports.Pipeline = Pipeline
