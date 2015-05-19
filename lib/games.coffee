@Games = new Meteor.Collection("games")

Games.allow
  update: (userId, doc, fields, modifier) ->
    true

Meteor.methods
  startGame: (course) ->
    holes = (_.extend(hole, {throws: hole.par}) for hole in course.holes)
    Games.insert({"courseName": course.name, "holes": holes})