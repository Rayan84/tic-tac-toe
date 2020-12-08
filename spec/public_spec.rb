require './bin/public'
require '../lib/game'

describe 'Main' do
  describe '#game_start' do
    # let(:new_game){Game.new("Rayan","Omar","X","O")}

    it 'Prints game rules' do
      expected_string = "GAME RULES\n\n1. THE FIRST PLAYER TO GET 3 OF HER/HIS\nMARKS IN A ROW (UP, DOWN, ACROSS, OR\nDIAGONALLY) IS THE WINNER.'\n\n2. WHEN ALL 9 SQUARES ARE FULL, THE\nGAME IS OVER. IF NO PLAYER HAS 3\nMARKS IN A ROW, THE GAME ENDS IN A TIE.\n"
      expect(game_start).to eql(expected_string)
    end
  end

  describe '#check_nam(word)' do
    it 'Checks for blank names' do
      expect(check_nam(' ')).not_to be_truthy
    end

    it 'Checks for names validity' do
      expect(check_nam('123')).to be_falsy
    end

    it 'Checks for names Equality' do
      expect(check_nam('Rayan')).to be_truthy
    end

    describe '#players_name(name)' do
      it 'Returns String and Prompts user to enter a name and calls #check_nam(word)' do
        expect(players_name('Player')).to be_a String
      end
    end

    describe '#user_mark' do
      it 'Returns String and Prompts user to enter a mark' do
        expect(%w[X O]).to include user_mark
      end
    end
  end
end
