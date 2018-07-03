require_relative "fish.rb"
require_relative "river.rb"


class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  #--------------------------------------------

  def check_initialization
      return [@name, @type]
  end


  def name
    return @name
  end

  def roar
    return "Rooarr!!"
  end

  def food_eaten
    return @stomach
  end


  def fish_the_fish(fish, river)    #how to make this so river doesnt have to be passed?
    @river.loose_fish(fish)
    @stomach << fish
  end

end
