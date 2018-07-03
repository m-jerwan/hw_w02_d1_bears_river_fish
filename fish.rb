require_relative "bear.rb"
require_relative "river.rb"


class Fish

  def initialize(name, type)
    @name = name
    @type = type
    @nutritional_value = 0 #-----how to contition that????
  end

#--------------------------------------------

def check_initialization
  return [@name, @type]
end

def name
  return @name
end

def nutritional_value #-----how to contition that????
  return 100 if @type == "Surgeonfish"
  return 50 if @type == "ClownFish"
  return 25 if @type == "Goldfish"
end














end
