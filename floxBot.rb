require 'discordrb'
CONFIG = JSON.parse(IO.read('config.json')).freeze

bot = Discordrb::Commands::CommandBot.new(
  token: CONFIG['Token'],
  client_id: CONFIG['Client_ID'],
  prefix: '~'
)

bot.command(:ping) do |event|
  event.respond 'Pong!'
end

bot.command(:exit) do |event|
  bot.send_message(event.channel.id, 'Flox Bot is shutting down.')
  exit
end

bot.run
