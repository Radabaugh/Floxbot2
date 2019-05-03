module Commands
  extend Discordrb::Commands::CommandContainer

  desc = "Shows the bot's current ping."
  command :ping, description: desc do |event|
    "pong! (#{Time.now - event.timestamp}s)"
  end

  desc = 'Greets the user. This can be used as a test to see if the bot is working.'
  command :hello, description: desc do |event|
    event.respond "Hello #{ event.author.mention }, how can I help?"
  end

  desc = 'Connects to the voice channel the user is in, if any.'
  command :connect, description: desc do |event|
    channel = event.user.voice_channel
    next 'You\'re not in any voice channel!' unless channel
    event.bot.voice_connect(channel)
    "Connected to voice channel: #{channel.name}"
  end
end
