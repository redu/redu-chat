(function() {

  window.ChatListItemView = Backbone.View.extend({
    tagName: 'li',
    initializer: function() {
      return _.bindAll(this, 'render');
    },
    render: function() {
      var template;
      template = _.template($("#chat-contact-item").html(), this.model.toJSON());
      return $(template);
    }
  });

}).call(this);
