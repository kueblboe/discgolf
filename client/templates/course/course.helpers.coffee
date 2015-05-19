{
  holeNum: ->
    @key + 1

  holesCount: ->
    @holes and @holes.length

  parSum: ->
    @holes and _.pluck(@holes, "par").reduce (t, s) -> t + s
}