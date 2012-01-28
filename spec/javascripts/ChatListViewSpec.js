(function() {

  describe("ChatListView", function() {
    beforeEach(function() {
      loadFixtures('fixtures.html');
      this.content = $("<div/>", {
        'class': 'chat-tray'
      });
      this.content.appendTo($("#jasmine_content"));
      return this.user = {
        username: 'guiocavalcanti',
        display_name: 'Guilherme Cavalcanti',
        pre_channel: 'pre-guiocavalcanti',
        contacts: [
          {
            id: 1,
            username: 'julianalucenaa',
            display_name: 'Juliana Lucena',
            thumbnail: 'images/user-24.png',
            role: 'Professor',
            pre_channel: 'pre-juliana',
            pri_channel: 'pri-juliana-guiocavalcanti'
          }, {
            id: 2,
            username: 'evelyndiniz',
            display_name: 'Evelyn Diniz',
            thumbnail: 'images/user-24.png',
            role: 'Professor',
            pre_channel: 'pre-evelyn',
            pri_channel: 'pri-evelyn-guiocavalcanti'
          }
        ]
      };
    });
    afterEach(function() {
      return this.content.find("*").remove();
    });
    it('should render correctly', function() {
      var chat, view;
      chat = new ChatListModel(this.user);
      view = new ChatListView({
        model: chat
      });
      this.content.append(view.render());
      return (expect(this.content.find(".chat-contacts"))).toExist();
    });
    return it('should render the chat list', function() {
      var chat, view;
      chat = new ChatListModel(this.user);
      view = new ChatListView({
        model: chat
      });
      return (expect(view.render())).toHaveText(/Juliana Lucena/);
    });
  });

}).call(this);
