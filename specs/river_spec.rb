require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("fish")
    @river = River.new("Amazon")
  end

  def test_get_name()
    assert_equal("Amazon", @river.name())
  end

  def test_count_fish__empty()
    assert_equal(0, @river.count_fish())
  end

  def test_count_fish__not_empty()
    @river.add_fish(@fish1)
    assert_equal(1, @river.count_fish())
  end

  # def test_bequeath_fish
  #   @river.add_fish(@fish1)
  #   river.bequeath_fish
  # end

  # def test_add_multiple_fish
  #   @river.add_fish(@fish1)
  #   assert_equal(1, @river.count_fish())
  # end

end
