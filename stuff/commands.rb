module KaioSama
  module Stuff
    # Commands Stuff sin eventcontainer
    module Commands
      bot.message(with_text: prefix + 'ip') do |event|
        event.respond '```IP: mc.indiopikaro.cl Version: 1.16.4```'
      end

      bot.message(with_text: prefix + 'acerca') do |event|
        event.respond 'Bot de minecraft KaioSama hecho en Ruby por Iftech SpA 😱'
        event.respond "`La URL de este bot es #{bot.invite_url}&permissions=261120`"
      end

      bot.message(with_text: prefix + 'hora') do |event|
        event.respond 'La hora es: ' + Time.now.strftime('%F %T %Z').to_s + '⏰'
      end
    end
  end
end