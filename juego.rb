# Llamo a la gema colorize
require 'colorize'

# Imprimo el mensaje de bienvenida
puts ""
puts "¡Bienvenido al juego: Piedra, Papel o Tijera!".colorize(:green).on_black
puts ""

# Uso la función RAND para que el computador escoja al azar su elección
opcion = rand(0..2)

jugada_computador =
  if opcion == 0
    'piedra'
  elsif opcion == 1
    'papel'
  else
    'tijera'
  end

# El jugador humano elige su opción
puts "Elige tu jugada (piedra, papel o tijera):"
jugada = gets.chomp.downcase


# Se verifica que la elección sea "piedra, papel o tijera" de lo contrario da un mensaje de rror y cierra el programa, lo ideal sería que se definiera un loop para que cuando de error no se salga, sino que vuelva a preguntar por la opción del humano, pero aún no lo se implementar😥.

if jugada == 'piedra' || jugada == 'papel' || jugada == 'tijera'
  puts "Has elegido: #{jugada.capitalize}"
else
  puts "Jugada inválida. Intenta nuevamente."
  exit
end


# Se compara la elección del computador y del humano para determinar quién ganó
resultado =
  if jugada == jugada_computador
    "Es un empate"
  elsif (jugada == 'piedra' && jugada_computador == 'tijera') || (jugada == 'papel' && jugada_computador == 'piedra') || (jugada == 'tijera' && jugada_computador == 'papel')
    "¡Ganaste! 😁"
  else
    "¡Perdiste! 😭"
  end

# Se imprime el mensaje que dice si el humano ganó, perdió o hubo empate
puts ""
puts "El jugador eligió: #{jugada.capitalize.colorize(:yellow)}"
puts ""
puts "El computador eligió: #{jugada_computador.capitalize.colorize(:yellow)}"
puts ""
puts "---===| #{resultado} |===---".colorize(:white).on_black
puts ""
