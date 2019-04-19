module Commands
  extend Discordrb::Commands::CommandContainer

  desc = "pong!"
  command :ping, description: desc do |event|
    "pong! (#{Time.now - event.timestamp}s)"
  end

  desc = 'hello!'
  command :hello, description: desc do |event|
    event.respond "Hello #{ event.author.mention }, how can I help?"
  end
end
