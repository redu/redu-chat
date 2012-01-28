window.ChatListItemView = Backbone.View.extend({
  tagName : 'li'
  initializer : ->
    _.bindAll(this, 'render')
  render : ->
    template = _.template($("#chat-contact-item").html(), this.model.toJSON())
    $(template)
})
