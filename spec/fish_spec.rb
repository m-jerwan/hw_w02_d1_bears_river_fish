require "minitest/autorun"
require "minitest/rg"

require_relative "../fish.rb"

class TestFish < MiniTest::Test

def setup
  @fish_01 = Fish.new("Dorry", "Surgeonfish")
  @fish_02 = Fish.new("Nemo", "ClownFish")
  @fish_03 = Fish.new("Klaus Heissler", "Goldfish")

end
#----------------------------------------------------------

def test_check_initialization
  actual = @fish_02.check_initialization
  assert_equal(["Nemo", "ClownFish"], actual)
end

def test_nutritional_value
  actual = @fish_01.nutritional_value
  assert_equal(100, actual)
end




end
