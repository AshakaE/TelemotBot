# rubocop:disable Metrics/MethodLength
# rubocop:disable Layout/LineLength
require 'telegram/bot'
require_relative 'inspire'
require_relative 'joke'
require 'dotenv'

Dotenv.load('./.env')

class Bot
  def initialize
    token = ENV['key']
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Hello, #{message.from.first_name} , Welcome to Inspire chat bot by Ashaka Egerega, the chat bot is to keep you motivated and entertained. Use  /start to start the bot,  /stop to end the bot, /inspire to get a different inspirational quote or /joke to get a message joke") 
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/inspire'
          values = Inspire.new
          value = values.select_random
          bot.api.send_message(chat_id: message.chat.id, text: (value['text']).to_s, date: message.date)
        when '/joke'
          jokes = Jokes.new
          joke = jokes.newjoke
          bot.api.send_message(chat_id: message.chat.id, text: (joke['joke']).to_s, date: message.date)
        else bot.api.send_message(chat_id: message.chat.id,
                                  text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /inspire or /joke")
        end
      end
    end
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Layout/LineLength
