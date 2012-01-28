(function() {

  window.ChatListModel = Backbone.Model.extend({
    initialize: function(attrs) {
      var contact, _i, _len, _ref, _results;
      this.user = new UserModel({
        username: attrs.username,
        display_name: attrs.display_name,
        pre_channel: attrs.pre_channel
      });
      this.contacts = new ContactsCollection();
      if (attrs.contacts) {
        _ref = attrs.contacts;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          contact = _ref[_i];
          _results.push(this.contacts.add(new ContactModel(contact)));
        }
        return _results;
      }
    }
  });

}).call(this);
