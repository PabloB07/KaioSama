require 'discordrb'
require 'colorize'
require 'discordrb/webhooks'
#Encendiendo
puts "Iniciando bot...".colorize(:green)

#Web_hook del canal
WEB_HOOK = "Webhook"
#prefijo
prefix = '!'
#Objeto bot llamandolo
bot = Discordrb::Bot.new token: 'Bot-token'
#Mensajes con comandos básicos
bot.message(with_text: prefix + 'ip') do |event|
  event.respond '```IP: mc.zetacraft.cl Version: 1.14.4```'
end

bot.message(with_text: prefix + 'acerca') do |event|
  event.respond '```Bot KaioSama hecho en Ruby por pablo blanco 😱```'
  event.respond "`La URL de este bot es #{bot.invite_url}`"
end

bot.message(with_text: prefix + 'hora') do |event|
  event.respond '```La hora es: ' + Time.now.strftime('%F %T %Z').to_s + '```'
end
bot.message(with_text: prefix + 'konga') do |event|
  event.respond '<a:konga:606763427674849290>'
end
#Embed
client = Discordrb::Webhooks::Client.new(url: WEB_HOOK)

client.execute do |builder|
  builder.content = 'Reglas del discord de ZetaCraft'
  builder.add_embed do |embed|
    #Título, color, url, descripción y timestamp
    embed.title = "**Reglas del discord de ZetaCraft**"
    embed.colour = 13578012
    embed.url = "https://discord.gg/cVwcfyr"
    embed.description = "Las siguientes reglas deben ser leídas para evitar una posible sanción."
    embed.timestamp = Time.now
    #Imagenes del Embed
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: "https://cdnimg-latina-pe.secure.footprint.net/latina_web/post/5541/portada/principal/5541.jpg")
    embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://cdn.discordapp.com/emojis/606291039166267418.png?v=1")
    #Values del embed
    embed.add_field(name: "1.-", value: "```NO enviar insultos en los canales y al Staff, solo con un argumento valido y sin alterarse.```")
    embed.add_field(name: "2.-", value: "```NO hay canales NSFW, por lo tanto no debes enviar contenido sexual dentro de los canales como: fotos y videos.```")
    embed.add_field(name: "3.-", value: "```NO al racismo, en este servidor no se permite.```")
    embed.add_field(name: "4.-", value: "```NO insistir al Staff sobre sanciones ya sea ban o desban```")
    embed.add_field(name: "5.-", value: "```NO dar instrucciones al Staff ya sea Mod, Admin incluso el pre-staff, ellos saben bien lo que hacen.```")
  end
end
#El bot se ejecuta
bot.run