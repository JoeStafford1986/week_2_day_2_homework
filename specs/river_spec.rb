require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    fish = [Fish.new("Sean"), Fish.new("Pauline"), Fish.new("Marcus"), Fish.new("Craig"), Fish.new("Edith")]
    @river = River.new("Amazon", fish)
  end

  def test_get_name
    assert_equal("Amazon", @river.name())
  end

  def test_count_fish
    assert_equal(5, @river.count_fish())
  end

end
