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
end
