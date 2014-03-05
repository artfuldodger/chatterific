@Chats = new Meteor.Collection('chats')
MAX_HEIGHT = 500

Meteor.methods(
  say: (name, words) ->
    Chats.insert(
      name:  name,
      words: words,
    )
)
