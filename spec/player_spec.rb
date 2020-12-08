require '../lib/player'

describe Player do
  describe '#initialize' do
    let(:new_player) { Player.new('Rayan', 'X') }

    it 'Creates new player object' do
      expect(new_player).to be_instance_of Player
    end

    it 'Makes sure that the instance object has a name' do
      expect(new_player.name).to eql('Rayan')
    end

    it 'Makes sure that the instance object has a mark' do
      expect(new_player.mark).to eql('X')
    end
  end
end
