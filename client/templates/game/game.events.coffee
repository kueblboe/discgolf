{
  "click button.dec": ->
    if @value.throws > 1
      whichHole = {}
      whichHole["holes.#{@key}.throws"] = -1
      Games.update(Session.get("currentGame"), {$inc: whichHole})

  "click button.inc": ->
    whichHole = {}
    whichHole["holes.#{@key}.throws"] = 1
    Games.update(Session.get("currentGame"), {$inc: whichHole})
}