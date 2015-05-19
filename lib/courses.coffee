@Courses = new Meteor.Collection('courses')

Courses.allow
  insert: (userId, doc) ->
    true
  update: (userId, doc, fields, modifier) ->
    true
