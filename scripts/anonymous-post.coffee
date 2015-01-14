# Description:
#   hubot anonymous post
#
# Commands:
#   hubot anon MESSAGE
#   hubot anon #general MESSAGE
#
# Author:
#   @shokai

config =
  to: 'general'

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
    msg.send "@#{from} #{to} にこっそり「#{text}」って言っておきました"
    return

  robot.respond /anon$/i, (msg) ->
    msg.send """
    hubot anon MESSAGE
    hubot anon [to] MESSAGE
    hubot anon #general MESSAGE
    """
    return
