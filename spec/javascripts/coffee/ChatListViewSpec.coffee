describe "ChatListView", ->
  beforeEach ->
    loadFixtures('fixtures.html')
    @content = $("<div/>", { 'class' : 'chat-tray' })
    @content.appendTo $("#jasmine_content")
    @user =
      username : 'guiocavalcanti',
      display_name : 'Guilherme Cavalcanti',
      pre_channel : 'pre-guiocavalcanti'
      contacts : [
          {
            id : 1,
            username : 'julianalucenaa',
            display_name : 'Juliana Lucena',
            thumbnail : 'images/user-24.png',
            role : 'Professor'
            pre_channel : 'pre-juliana',
            pri_channel : 'pri-juliana-guiocavalcanti'
          },
          {
            id : 2,
            username : 'evelyndiniz',
            display_name : 'Evelyn Diniz',
            thumbnail : 'images/user-24.png',
            role : 'Professor'
            pre_channel : 'pre-evelyn',
            pri_channel : 'pri-evelyn-guiocavalcanti'
          }
      ]
  afterEach ->
    @content.find("*").remove()

  it 'should render correctly', ->
    chat = new ChatListModel(@user)
    view = new ChatListView({ model : chat })
    @content.append view.render()

    (expect @content.find(".chat-contacts")).toExist()

  it 'should render the chat list', ->
    chat = new ChatListModel(@user)
    view = new ChatListView({ model : chat })

    (expect view.render()).toHaveText /Juliana Lucena/

