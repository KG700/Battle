require 'player'

describe Player do
  subject(:karla) { Player.new('Karla') }
  subject(:ben) { Player.new('Ben')}

    it "has a method that returns player's name" do
      expect(karla.name).to eq "Karla"
    end

    it "Players HP default to default value" do
      expect(karla.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end

end
    # it "when Karla attacks Ben, Ben's HP will reduce by 10" do
    #   expect { karla.attack ben }.to change { ben.hit_points }.by -10
    # end

    # it 'damages the player' do
    #   expect(ben).to receive(:reduce_hit_points)
    #   karla.attack(ben)
    # end
