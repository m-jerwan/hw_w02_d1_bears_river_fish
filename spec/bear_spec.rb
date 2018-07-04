require "minitest/autorun"
require "minitest/rg"

require_relative "../bear.rb"

class TestBear < MiniTest::Test

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
    actual = @bear_03.check_initialization
    assert_equal(["Bi-polar", "Polar"], actual)
  end

  def test_roar
    actual = @bear_01.roar
    assert_equal("Rooarr!!", actual)
  end

  def test_food_eaten
    actual = @bear_01.food_eaten
    assert_equal([], actual)
  end

  def test_fish_the_fish
    @bear_01.fish_the_fish(@fish_01, @river)
    actual_01 = @river.fish_count
    assert_equal(2, actual_01)
    assert_equal([@fish_01], @bear_01.food_eaten)
  end

  def test_hunger__not_eaten
    actual = @bear_01.hunger
    assert_equal(1000, actual)
  end

  def test_hunger__eaten
    @bear_01.fish_the_fish(@fish_02, @river)
    actual = @bear_01.hunger
    assert_equal(950, actual)
  end

  def test_how_hungry__not_eaten
    actual = @bear_01.how_hungry
    expected = "I still need 1000 calories today!"
    assert_equal(expected, actual)
  end

  def test_how_hungry__eaten
    @bear_03.fish_the_fish(@fish_01, @river)
    expected = "I still need 150 calories today!"
    actual = @bear_03.how_hungry
    assert_equal(expected, actual)
  end

end
