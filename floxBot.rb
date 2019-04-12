require 'discordrb'
CONFIG = JSON.parse(IO.read('config.json')).freeze

bot = Discordrb::Commands::CommandBot.new(
  token: CONFIG['Token'],
  client_id: CONFIG['Client_ID'],
  prefix: '~'
)

bot.command(:hello) do |event|
  event.respond "Hello #{ event.author.mention }, how can I help?"
end

bot.command(:exit) do |event|
  bot.respond 'Flox Bot is shutting down.'
  exit
end

bot.run
