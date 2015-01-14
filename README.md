Hubot Anonymous Post
====================
post as hubot

[![Build Status](https://travis-ci.org/shokai/hubot-anonymous-post.svg?branch=master)](https://travis-ci.org/shokai/hubot-anonymous-post)

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

    # on heroku
    heroku config:set HUBOT_ANON_TO=general


Usage
-----

    hubot anon <MESSAGE>
    # or
    hubot anon #room_name <MESSAGE>

### send

![post](http://gyazo.com/9e427fed83d69b36cb77f23c4819b0b6.png)

### result

![result](http://gyazo.com/3d7be4bfee20557be683bccfe005f54f.png)

Test
----

    % npm install

    % grunt
    # or
    % npm test
