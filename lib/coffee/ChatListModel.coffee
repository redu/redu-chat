window.ChatListModel = Backbone.Model.extend({
  initialize : (attrs) ->
    @user = new UserModel({
      username : attrs.username,
      display_name : attrs.display_name,
      pre_channel : attrs.pre_channel,
    })

    @contacts = new ContactsCollection()
    if attrs.contacts
      for contact in attrs.contacts
        @contacts.add new ContactModel(contact)


})
