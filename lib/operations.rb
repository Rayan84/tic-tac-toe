require_relative './logic.rb'
# get numbers from players
@number_options = [1, 2, 3, 4, 5, 6, 7, 8, 9]
@arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]


def check_input(input)
  #puts "#{@player1_name} and  #{@player2_name} player names from check input"
  if @number_options.include? input
    # system('clear')
    # system('cls')
    update_table(input)
    win_check
    draw_check
    puts ''
    @number_options.delete(input)
  else
    puts
    puts "Please enter a number from #{@number_options}"
    puts
  end
end

def change_player(a, b)


   if @active_player == a
      @active_player = b
                   else
      @active_player = a
                   end
end

# update table after each player play
def update_table(num)
  puts 'update table called'
  puts @player2_name
  puts @player1_name
 puts "active player is #{@active_player}"

  if @active_player == @player2_name
    @arr[num - 1] = @marks[1]

    puts @marks[1]
  else
    puts @marks[0]
    @arr[num - 1] = @marks[0]
  end
  change_player(@player1_name, @player2_name)
  system('cls')
  system('clear')
  puts create_table
  puts "array after update table #{@arr}"
end