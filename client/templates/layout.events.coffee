{
  "click button#play": ->
    Meteor.call("startGame", this, (error, id) ->
      Router.go("/game/#{id}")
      Session.set "currentGame", id
    )
}