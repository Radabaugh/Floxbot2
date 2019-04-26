require 'discordrb'
require './commands.rb'

CONFIG = JSON.parse(IO.read('config.json')).freeze

  bot = Discordrb::Commands::CommandBot.new(
    token: CONFIG['token'],
    client_id: CONFIG['client_id'],
    prefix: '!'
  )

  bot.include_commands(Commands)
  bot.run
