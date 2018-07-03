require_relative "bear.rb"
require_relative "fish.rb"


class River

  def initialize(name, fish_in_river, bears_near_river)
    @name = name
    @fish_in_river = fish_in_river
    @bears_near_river = bears_near_river
  end

  #--------------------------------------------

  def check_initialization
    return [@name, @fish_in_river[0].name, @bears_near_river[0].name]
  end

  def fish_count
    @fish_in_river.length
  end

  def loose_fish(fish)
    @fish_in_river.delete(fish)
  end







end
