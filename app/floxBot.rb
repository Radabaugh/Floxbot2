require 'discordrb'
require './modules/commands.rb'

CONFIG = JSON.parse(IO.read('./config/config.json')).freeze

bot = Discordrb::Commands::CommandBot.new(
  token: CONFIG['token'],
  client_id: CONFIG['client_id'],
  prefix: '!'
)

bot.include_commands(Commands)
bot.run
