require 'discordrb'

CONFIG = JSON.parse(IO.read('config.json')).freeze

module FloxBot
  module Commands

    bot = Discordrb::Commands::CommandBot.new(
      token: CONFIG['token'],
      client_id: CONFIG['client_id'],
      prefix: '!'
    )

    bot.run
  end
end
