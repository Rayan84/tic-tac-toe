require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative './public.rb'

game = Game.new('player1', 'player2', 'mark1', 'mark2')

puts game.create_table

puts game_start

player1 = Player.new(players_name('Player One').capitalize, user_mark)

mark2 = player1.mark == 'X' ? 'O' : 'X'

player2 = Player.new(players_name('Player Two').capitalize, mark2)

game = Game.new(player1.name, player2.name, player1.mark, player2.mark)

puts game.create_table

game.getnumber
