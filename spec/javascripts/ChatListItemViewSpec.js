(function() {

  describe("ChatListItemView", function() {
    beforeEach(function() {
      loadFixtures('fixtures.html');
      this.sanbox = $("#jasmine_content");
      return this.contact = {
        id: 1,
        username: 'julianalucenaa',
        display_name: 'Juliana Lucena',
        thumbnail: 'images/user-24.png',
        role: 'Professor'
      };
    });
    return it('should render correctly', function() {
      var contact, view;
      contact = new ContactModel(this.contact);
      view = new ChatListItemView({
        model: contact
      });
      return (expect(view.render())).toHaveText(/Juliana Lucena/);
    });
  });

}).call(this);
