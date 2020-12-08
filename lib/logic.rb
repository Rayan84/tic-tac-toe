def draw_check
  return unless @number_options.size == 1 && @win == ''

  @game = false
  output('  Draw')
end

win_line = [[@arr[0], @arr[1], @arr[2]], [@arr[3], @arr[4], @arr[5]],
            [@arr[6], @arr[7], @arr[8]], [@arr[0], @arr[3], @arr[6]],
            [@arr[1], @arr[4], @arr[7]], [@arr[0], @arr[4], @arr[8]],
            [@arr[2], @arr[5], @arr[8]], [@arr[2], @arr[4], @arr[6]]]
def win_check

  if @active_player == @player1_name
    win_line.each do |item|
      if item.all?(@@player_two.mark)
        @game = false
        @win = "  #{@@player_two.name} wins"
      end
    end
  else
    win_line.each do |item|
      if item.all?(@@player_one.mark)
        @game = false
        @win = "  #{@@player_one.name} wins"
      end
    end
  end
  output(@win)
end
