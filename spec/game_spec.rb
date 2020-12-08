require_relative '../lib/player'
require_relative '../bin/public'
require_relative '../lib/game'

describe Game do
  let(:player1) { Player.new('Rayan', 'x') }
  let(:player2) { Player.new('Omar', 'o') }
  let(:new_game) { Game.new(player1.name, player2.name, player1.mark, player2.mark) }

  describe '#initialize' do
    it 'Creates a new game object' do
      expect(new_game).to be_instance_of Game
    end
  end

  describe '#create_table' do
    it 'Display the current table instance variable' do
      expected_table = "
             TİC TAC TOE GAME

   +-----------------------------+
   |         |         |         |
   |    #{new_game.arr[0]}    |    #{new_game.arr[1]}    |    #{new_game.arr[2]}    |
   |         |         |         |
   |-----------------------------|
   |         |         |         |
   |    #{new_game.arr[3]}    |    #{new_game.arr[4]}    |    #{new_game.arr[5]}    |
   |         |         |         |
   |-----------------------------|
   |         |         |         |
   |    #{new_game.arr[6]}    |    #{new_game.arr[7]}    |    #{new_game.arr[8]}    |
   |         |         |         |
   +-----------------------------+

"

      expect(new_game.create_table).to eql(expected_table)
    end

    it 'Update the current table instance variable' do
      expected_table = "
             TİC TAC TOE GAME

   +-----------------------------+
   |         |         |         |
   |    x    |    o    |    x    |
   |         |         |         |
   |-----------------------------|
   |         |         |         |
   |    #{new_game.arr[3]}    |    #{new_game.arr[4]}    |    #{new_game.arr[5]}    |
   |         |         |         |
   |-----------------------------|
   |         |         |         |
   |    #{new_game.arr[6]}    |    #{new_game.arr[7]}    |    #{new_game.arr[8]}    |
   |         |         |         |
   +-----------------------------+

"
      new_game.update_table('1')
      new_game.update_table('2')
      new_game.update_table('3')
      expect(new_game.create_table).to eql(expected_table)
    end
  end

  describe '#getnumber' do
    it 'Gets input from user until game finished' do
      expect(new_game.getnumber).to eql(nil)
    end
  end

  describe '#check_input()' do
    it 'Checks for user input availability' do
      new_game.check_input('1')
      new_game.check_input('2')
      new_game.check_input('3')
      expect(new_game.number_options).to eql(%w[4 5 6 7 8 9])
    end
  end

  describe '#change_player' do
    it 'Change players turns' do
      expect(new_game.change_player(player1.name, player2.name)).to eql(player2.name)
    end
  end

  describe '#update_table(num)' do
    it 'Updates the array of available squares' do
      new_game.update_table(1)
      expect(new_game.arr).to eql(['x', 2, 3, 4, 5, 6, 7, 8, 9])
    end

    it 'Updates the array of available squares when player2 is active' do
      new_game.active_player = player2.name
      new_game.update_table(2)
      expect(new_game.arr).to eql([1, 'o', 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
