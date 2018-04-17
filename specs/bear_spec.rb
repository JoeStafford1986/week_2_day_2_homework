require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Jim")
    fish = [Fish.new("Sean"), Fish.new("Pauline"), Fish.new("Marcus"), Fish.new("Craig"), Fish.new("Edith")]
    @river = River.new("Amazon")
  end

  def test_get_name()
    assert_equal("Jim", @bear.name())
  end

  def test_count_fish_in_stomach()
    assert_equal(0, @bear.count_fish_in_stomach())
  end

end
