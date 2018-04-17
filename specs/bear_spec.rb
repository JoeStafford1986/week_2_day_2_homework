require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Jim")
  end

  def test_get_name
    assert_equal("Jim", @bear.name())
  end

end
