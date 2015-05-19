Router.configure layoutTemplate: 'layout'
Meteor.startup ->
  if Meteor.isClient
    Meteor.subscribe('courses')

Router.map ->
  @route 'index',
    path: '/'
  @route 'course',
    path: '/course/:_id'
    data: -> Courses.findOne(@params._id)
  @route 'game',
    path: '/game/:_id'
    subscriptions: -> @subscribe('game', @params._id)
    data: -> Games.findOne(@params._id)
