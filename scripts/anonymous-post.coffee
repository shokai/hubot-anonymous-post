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
    to = args[0]
    channel = robot.adapter.client.rtm.dataStore.getChannelByName(to)
    if typeof channel is 'undefined'
      channel = robot.adapter.client.rtm.dataStore.getChannelByName(config.to)
    else
      args.shift()
    text = args.join(' ')
    robot.messageRoom channel.id, text
    msg.send "@#{from} send \"#{text}\" to #{channel.name}"
    return

  robot.respond /anon$/i, (msg) ->
    msg.send """
    hubot anon <MESSAGE>
    hubot anon #room_name <MESSAGE>
    """
    return
