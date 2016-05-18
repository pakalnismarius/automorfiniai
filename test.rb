require 'test/unit'
require './automorfiniai'

class  TestAutomorfiniai < Test::Unit::TestCase
  def test_valid
    auto = Automorphic.new(5)
    assert_equal(true, auto.is_automorphic?)
  end
end
