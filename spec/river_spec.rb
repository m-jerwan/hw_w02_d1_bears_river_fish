require "minitest/autorun"
require "minitest/rg"

require_relative "../river.rb"

class TestRiver < MiniTest::Test

  def setup
    @fish_01 = Fish.new("Dorry", "Surgeonfish")
    @fish_02 = Fish.new("Nemo", "ClownFish")
    @fish_03 = Fish.new("Klaus Heissler", "Goldfish")

    @fish_in_river = [@fish_01, @fish_02, @fish_03]

    @bear_01 = Bear.new("Yogi", "Brown")
    @bear_02 = Bear.new("Baloo", "Grizzly")
    @bear_03 = Bear.new("Bi-polar", "Polar")

    @bears_near_river = [@bear_01, @bear_02, @bear_03]

    @river = River.new("Amazon", @fish_in_river, @bears_near_river)

  end
  #----------------------------------------------------------

  def test_check_initialization
    actual = @river.check_initialization
    assert_equal(["Amazon", "Dorry", "Yogi"], actual)
  end

  def test_fish_count
    actual = @river.fish_count
    assert_equal(3, actual)
  end

  def test_loose_fish
    @river.loose_fish(@fish_01)
    actual = @river.fish_count
    assert_equal(2, actual)
  end

end
