require_relative '../lib/player.rb'
class Board
  def initialize
    @arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  def create_table
    #system('cls')
    #system('clear')
    @table = "
               TİC TAC TOE GAME

     +-----------------------------+
     |         |         |         |
     |    #{@arr[0]}    |    #{@arr[1]}    |    #{@arr[2]}    |
     |         |         |         |
     |-----------------------------|
     |         |         |         |
     |    #{@arr[3]}    |    #{@arr[4]}    |    #{@arr[5]}    |
     |         |         |         |
     |-----------------------------|
     |         |         |         |
     |    #{@arr[6]}    |    #{@arr[7]}    |    #{@arr[8]}    |
     |         |         |         |
     +-----------------------------+

  "
    puts @table
  end

  def check_input(input)
    @number_options = %w[1 2 3 4 5 6 7 8 9]
    puts 'check_input called'
    puts "number options from check input are #{@number_options}"
    input = input.strip
    puts "User input is #{input}"
    if @number_options.include?input
      update_table(input)
      win_check
      draw_check
      @number_options.delete(input)
      puts @number_options
    else
      output("  Please enter a number from #{@number_options}")
    end
  end
  #puts "active player in board class is #{@@active_player}"

  # update table after each player play

  def update_table(num)
    puts 'update_table called'
    Player.change_player(@player_one.name, @player_two.name)
    puts "active player in update table is #{@active_player}"
    #puts @arr
    puts "player one mark is #{@player_one.mark}"
    @arr[num.to_i - 1] = if @active_player == @player2_name
                           @player_two.mark
                         else
                           @player_one.mark
                         end
    create_table
  end



end
@board = Board.new.create_table
