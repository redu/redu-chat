## Redu single user chat

Creates a Single User Chat (SUE) using WebSockets through
[Pusher](http://www.pusher.com) and
[Backbone.js](http://documentcloud.github.com/backbone/). It should be framework
agnostic but for now is tested with Rails 3.0.11


## Setup

Add ``gem 'redu-chat', :git => 'git@github.com:redu/redu-chat.git'``
to your ``Gemfile`` and run ``bundle install``.

Than you just need copy the static assets as follows:

```bash
rake redu-chat:init
```

## Usage

A new chat instance should be created as follows:

```javascript
  $(document).ready(function(){
    var chat = new Chat({ 'userId' : 12 });
    $("#chat").append(chat.render());
  });
```

## Development

**TODO**
