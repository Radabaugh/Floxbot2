# Flox Bot v.2
My second attempt at a Discord Bot, this time in Ruby!

## Installation

This assumes you are using Homebrew on a Mac.

`brew install libsodium` is needed for discordrb’s voice functionality to work.

`brew install ffmpeg` is needed for audio/video that’s required by discordrb for voice support.

## Setup

Run `bundle install` to install required gems.

### Configuration

You'll need to create a `config.json` file inside of the`app/config` folder. See the `config.json.example` file for how it should look.

## Run the Bot

Navigate to the `app/` directory, and the bot can be run with the command `ruby floxBot.rb`.

## Commands

All commands begin with the `!` prefix.

```
!hello - Greets the user.
!ping  - Responds with the bot's ping.
```
