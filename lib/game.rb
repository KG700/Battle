class Game

  attr_reader :turn, :opponent

  def initialize(player_1, player_2)
    @players = [player_2, player_1]
    @turn = @players.first
    @opponent = @players.last
  end

  def attack
    switch_turn
    @opponent.hit_points -= 10
  end

  def switch_turn
    @players.reverse!
    @turn = @players.first
    @opponent = @players.last
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

end
