require_relative 'lr7_2'
require 'minitest/autorun'

class Test < Minitest::Unit::TestCase
  def test_1
    w1 = Word.new('hello')
    w2 = Word2.new('Hi')
    assert_includes(w2.class.ancestors, w1.class, 'Word is an ancestor of Word2')
  end
end
