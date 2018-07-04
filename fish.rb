require_relative "bear.rb"
require_relative "river.rb"


class Fish

  def initialize(name, type)
    @name = name
    @type = type
    @nutritional_value =  100 if @type == "Surgeonfish"
    @nutritional_value =   50 if @type == "ClownFish"
    @nutritional_value =   25 if @type == "Goldfish"
  end

#--------------------------------------------

def check_initialization
  return [@name, @type]
end

def name
  return @name
end

def nutritional_value
  return @nutritional_value
end














end
