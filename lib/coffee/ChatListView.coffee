window.ChatListView = Backbone.View.extend({
  initialize : ->
    _.bindAll(this, 'render')
  render : ->
    $template = this.template "#chat-contacts", this.model.user
    $ul = $template.find('ul')

    @model.contacts.each (contact) ->
      item =  new ChatListItemView({model : contact})
      $ul.append item.render()

    $template

  template : (templateId, model) ->
    $ _.template($(templateId).html(), model.toJSON())

})
