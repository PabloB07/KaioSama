module KaioSama
  module Stuff
    # Admin system Stuff here
    module Admin
      extend Discordrb::Commands::CommandContainer

      command(
        :clear, min_args: 1, max_args: 1,
        description: 'Eliminar X cantidad de mensajes del canal'
      ) do |event, number|
        break if (KaioSama.conf['server_protection'] == 1) &&
          (!KaioSama.conf['owners'].include? event.user.id)

        event.message.delete
        break event.respond('Porfa ingresa un número válido (hasta el 100).') if /\A\d+\z/.match(number).nil?
        event.channel.prune(number.to_i)
        stuff = event.respond("[#{number.to_i}] Mensajes eliminados ␡").id
        sleep 3
        event.channel.load_message(stuff).delete
      end
    end
  end
end