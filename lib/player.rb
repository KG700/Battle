class Player

  attr_reader :name
  attr_accessor :hit_points
  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  # def attack(player)
  #   player.reduce_hit_points
  # end
  #
  # def reduce_hit_points
  #   @hit_points -= 10
  # end

end
