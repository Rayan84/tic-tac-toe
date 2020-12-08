def game_start
  "GAME RULES\n\n1. THE FIRST PLAYER TO GET 3 OF HER/HIS\nMARKS IN A ROW (UP, DOWN, ACROSS, OR\nDIAGONALLY) IS THE WINNER.'\n\n2. WHEN ALL 9 SQUARES ARE FULL, THE\nGAME IS OVER. IF NO PLAYER HAS 3\nMARKS IN A ROW, THE GAME ENDS IN A TIE.\n"
end

@first_name_entered = false
def check_nam(word)
  if word.empty?
    print '  Name can not be blank, please enter a name: '
    false
  else
    word.size.times do |i|
      unless ('a'..'z').include? word[i].downcase
        print '  Please enter a proper name: '
        return false
      end
    end
    if @first_name_entered == true && word.downcase == @first_name.downcase
      print '  This name is already taken, please enter a different name: '
      return false
    else
      @first_name = word
    end
    @first_name_entered = true
    true
  end
end

def players_name(name)
  print "  #{name} enter your name:  "
  nam = ''
  loop do
    nam = gets.chomp
    break if check_nam(nam)
  end
  nam
end

def user_mark
  mark1 = ''
  loop do
    print '  Enter your mark "X" or "O":  '
    mark1 = gets.chomp.upcase
    break if %w[X O].include? mark1
  end
  mark1
end

def outputs(text)
  puts text
end

def printing(text)
  print text
end

def ask_player
  gets.chomp
end
