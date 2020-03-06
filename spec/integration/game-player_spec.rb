require 'game'
require 'player'

describe 'Game and Player' do
  let(:karla) { Player.new("Karla")}
  let(:stephan) { Player.new("Stephan") }
  let(:game) { Game.new( karla, stephan) }

  it "attack reduces karla's hit points" do
    expect { game.attack }.to change { game.player_2.hit_points }.by -10
  end

end
