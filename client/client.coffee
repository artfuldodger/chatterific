Template.form.events(
  'submit form': (e) ->
    e.preventDefault()
    name  = $('input[name=name]').val()
    words = $('input[name=words]').val()
    $('input[name=words]').val('')
    Meteor.call('say', name, words) if words
)

Template.chats.chats = ->
  @Chats.find({})

Template.chats.rendered = ->
  $("#chats").animate({scrollTop:$("#chats")[0].scrollHeight}, 1000)
