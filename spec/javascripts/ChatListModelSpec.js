(function() {

  describe("ChatListModel", function() {
    beforeEach(function() {
      loadFixtures('fixtures.html');
      return this.user = {
        username: 'guiocavalcanti',
        display_name: 'Guilherme Cavalcanti',
        pre_channel: 'pre-guiocavalcanti',
        contacts: [
          {
            id: 1,
            username: 'julianalucenaa',
            display_name: 'Juliana Lucena',
            pre_channel: 'pre-juliana',
            pri_channel: 'pri-juliana-guiocavalcanti'
          }, {
            id: 2,
            username: 'julianalucenaa',
            display_name: 'Juliana Lucena',
            pre_channel: 'pre-juliana',
            pri_channel: 'pri-juliana-guiocavalcanti'
          }
        ]
      };
    });
    it("should initialize associated user", function() {
      var chat;
      chat = new ChatListModel(this.user);
      return (expect(chat.user.get('username'))).toEqual('guiocavalcanti');
    });
    return it("should initialize contacts colllection", function() {
      var chat;
      chat = new ChatListModel(this.user);
      return (expect(chat.contacts.at(0).get('username'))).toEqual('julianalucenaa');
    });
  });

}).call(this);
