{
  holeNum: ->
    @key + 1

  game: ->
    Games.find().fetch()[0]

  score: ->
    par = _.pluck(@holes, "par").reduce (t, s) -> t + s
    throws = _.pluck(@holes, "throws").reduce (t, s) -> t + s
    score = throws - par
    if score > 0 then '+' + score else score
}