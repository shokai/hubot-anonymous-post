Hubot Anonymous Post
====================
post as hubot

- https://github.com/shokai/hubot-anonymous-post
- https://www.npmjs.org/package/hubot-anonymous-post


Install
-------

    % npm install hubot-anonymous-post -save

### edit `external-script.json`

```json
[ "hubot-anonymous-post" ]
```

### Configure (ENV var)

    export HUBOT_ANON_TO=general  # default room

Usage
-----

    hubot anon <MESSAGE>
    # or
    hubot anon #room_name <MESSAGE>


Test
----

    % npm install

    % grunt
    # or
    % npm test
