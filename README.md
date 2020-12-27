# KaioSama

Bot Básico KaioSama hecho en dicordrb con Ruby para Discord.

### Actualizaciones

- Se renombra de **main.rb** a **bot.rb**
- Se elimina los comentarios y ahora se ordena, el código está más legible
- Se agrega la gema Yajl para la lectura del archivo json
- Se edita **bot.rb** ahora usa **modules**
- Se agrega **admin.json** el archivo que contiene: permisos, prefix, id cliente, id bot
- Se agrega **commands.rb** con comandos básicos sin EventContainer
- Se agregó el sistema **eventcontainer** de discord, para crear multiples comandos y que reciba una respuesta
- Se agregó 2 carpetas, 1 carpeta Stuff y 1 carpeta Embeds. todo va relacionado al contenido como admin.rb, roles.rb, etc. y todo relacionado a embeds en esa carpeta