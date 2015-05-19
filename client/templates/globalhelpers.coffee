Template.registerHelper 'key_value', (context, options) ->
  _.map context, (value, key, list) ->
    key: key
    value: value