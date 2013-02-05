class window.WebSocketTest

  constructor: (address) ->
    @dispatcher = new WebSocketRails(address)
    @bindEvents()
    @bindButtons()

  bindEvents: =>
    @dispatcher.bind "resize", (message) ->
      console.log "resize received"
      console.log message

    @dispatcher.bind "new_film", (message) ->
      console.log "new_film received"
      console.log message

  bindButtons: =>
    $('#resize').on "click", (e) =>
      e.preventDefault()
      @dispatcher.trigger "resize", {message: 'resize sent'}

    $('#new-film').on "click", (e) =>
      e.preventDefault()
      @dispatcher.trigger "new_film", {message: 'new_film sent'}

