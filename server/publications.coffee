Meteor.publish "courses", ->
  Courses.find()

Meteor.publish "game", (id) ->
  Games.find(id)