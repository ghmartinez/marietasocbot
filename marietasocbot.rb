require 'telegram/bot'
require 'telegram-bot-ruby'

require 'dotenv'
Dotenv.load
token = ENV['TELEGRAM_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "¡Hola, #{message.from.first_name}! Eres una guarra de MarietA-SÓC")
    when '/hola'
      bot.api.send_message(chat_id: message.chat.id, text: "¡Hola! ¿Cómo estás?")
    # Puedes agregar más casos según las necesidades de tu bot
    end
  end
end
