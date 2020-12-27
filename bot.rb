require 'discordrb'
require 'colorize'
require 'discordrb/webhooks'
require 'yajl'

module KaioSama

  api = Yajl::Parser.parse(File.new('admin.json', 'r'))
  bot = Discordrb::Commands::CommandBot.new(token: api['discord_token'], client_id: api['discord_app_id'], prefix: api['prefix_bot'])

  puts "Esta es la URL del bot #{bot.invite_url}&permissions=261120".colorize(:green)
  puts 'Click para añadirlo a tu servidor!'.colorize(:light_blue ).colorize( :background => :red)

  bot.ready do |event|
    # bot.game = 'Use v!help for Help.'
    # sleep 180
    bot.game = "En #{event.bot.servers.count} servidores!, Usa #{api['prefix_bot']}ayuda para tener ayuda."
  end

  bot.run
end