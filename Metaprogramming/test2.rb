require "test/unit"
require "benchmark"
class Brokened
  def uh_oh
    "I needs fixing"
  end
end

class BrokenedTest < Test::Unit::TestCase
  def test_uh_oh
    actual = Brokened.new
    assert_equal("I needs fixing", actual.uh_oh)
  end
end

Benchmark.bm do |b|
  b.report do
    1000.times do
      Brokened.new.uh_oh
    end
  end
end
