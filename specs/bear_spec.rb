require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Jim")
    @fish = [Fish.new("fish")]
    @river = River.new("Amazon")
  end

  def test_get_name()
    assert_equal("Jim", @bear.name())
  end

  def test_count_fish_in_stomach__empty()
    assert_equal(0, @bear.count_fish_in_stomach())
  end

  def test_count_fish_in_stomach__not_empty()
    @bear.catch_fish(@fish)
    assert_equal(1, @bear.count_fish_in_stomach())
  end

  def test_catch_fish()
    @river.add_fish(@fish)
    @bear.catch_fish(@fish)
    @river.lose_fish()
    assert_equal(1, @bear.count_fish_in_stomach())
    assert_equal(0, @river.count_fish())
  end

end
