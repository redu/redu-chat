describe "ChatListModel", ->
  beforeEach ->
    loadFixtures('fixtures.html')
    @user =
      username : 'guiocavalcanti',
      display_name : 'Guilherme Cavalcanti',
      pre_channel : 'pre-guiocavalcanti'
      contacts : [
          {
            id : 1,
            username : 'julianalucenaa',
            display_name : 'Juliana Lucena',
            pre_channel : 'pre-juliana',
            pri_channel : 'pri-juliana-guiocavalcanti'
          },
          {
            id : 2,
            username : 'julianalucenaa',
            display_name : 'Juliana Lucena',
            pre_channel : 'pre-juliana',
            pri_channel : 'pri-juliana-guiocavalcanti'
          }
      ]


  it "should initialize associated user", ->
    chat = new ChatListModel(@user)
    (expect chat.user.get('username')).toEqual 'guiocavalcanti'

  it "should initialize contacts colllection", ->
    chat = new ChatListModel(@user)
    (expect chat.contacts.at(0).get('username')).toEqual 'julianalucenaa'



