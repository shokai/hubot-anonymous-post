# Description:
#   hubot anonymous post
#
# Commands:
#   hubot anon <MESSAGE>
#   hubot anon #room_name <MESSAGE>
#
# Author:
#   @shokai

config =
  to: process.env.HUBOT_ANON_TO or 'general'

module.exports = (robot) ->

  robot.respond /anon (.+)$/i, (msg) ->
    from = msg.message.user.name
    args = msg.match[1].trim().split(/\s+/)
    if /[#@][a-zA-Z0-9_\-]+/.test args[0]
      to = args.shift().replace(/^[#@]/,'')
    else
      to = config.to
    text = args.join(' ')
    robot.send {room: to}, text
    msg.send "@#{from} send \"#{text}\" to #{to}"
    return

  robot.respond /anon$/i, (msg) ->
    msg.send """
    hubot anon <MESSAGE>
    hubot anon #room_name <MESSAGE>
    """
    return
