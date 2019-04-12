require 'discordrb'
CONFIG = JSON.parse(IO.read('config.json')).freeze

bot = Discordrb::Bot.new token: CONFIG['Token'], client_id: 566320910391443471

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run
