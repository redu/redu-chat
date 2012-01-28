(function() {

  window.ChatListView = Backbone.View.extend({
    initialize: function() {
      return _.bindAll(this, 'render');
    },
    render: function() {
      var $template, $ul;
      $template = this.template("#chat-contacts", this.model.user);
      $ul = $template.find('ul');
      this.model.contacts.each(function(contact) {
        var item;
        item = new ChatListItemView({
          model: contact
        });
        return $ul.append(item.render());
      });
      return $template;
    },
    template: function(templateId, model) {
      return $(_.template($(templateId).html(), model.toJSON()));
    }
  });

}).call(this);
