describe "ChatListItemView", ->
  beforeEach ->
    loadFixtures('fixtures.html')
    @sanbox = $("#jasmine_content")
    @contact =
      id : 1,
      username : 'julianalucenaa',
      display_name : 'Juliana Lucena',
      thumbnail : 'images/user-24.png'
      role : 'Professor'

  it 'should render correctly', ->
    contact = new ContactModel(@contact)
    view = new ChatListItemView({model : contact})
    (expect view.render()).toHaveText /Juliana Lucena/

