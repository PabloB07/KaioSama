module KaioSama
  module Embed
    # Embeds Stuff here
    module Embeds

      WEB_HOOK = "https://discord.com/api/webhooks/canal id/el id del webook"

      client = Discordrb::Webhooks::Client.new(url: WEB_HOOK)

      client.execute do |builder|
        builder.content = 'Reglas del discord del Servidor'
        builder.add_embed do |embed|

          embed.title = "**Reglas del discord del bot**"
          embed.colour = 0x13577012
          embed.description = "Las siguientes reglas deben ser leídas para evitar una posible sanción."
          embed.timestamp = Time.now

          embed.image = Discordrb::Webhooks::EmbedImage.new(url: "https://cdnimg-latina-pe.secure.footprint.net/latina_web/post/5541/portada/principal/5541.jpg")
          embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://cdn.discordapp.com/emojis/606291039166267418.png?v=1")

          embed.add_field(name: "1.-", value: "```NO enviar insultos en los canales y al Staff, solo con un argumento valido y sin alterarse.```")
          embed.add_field(name: "2.-", value: "```NO hay canales NSFW, por lo tanto no debes enviar contenido sexual dentro de los canales como: fotos y videos.```")
          embed.add_field(name: "3.-", value: "```NO al racismo, en este servidor no se permite.```")
          embed.add_field(name: "4.-", value: "```NO insistir al Staff sobre sanciones ya sea ban o desban```")
          embed.add_field(name: "5.-", value: "```NO dar instrucciones al Staff ya sea Mod, Admin incluso el pre-staff, ellos saben bien lo que hacen.```")
        end
      end
    end
  end
end