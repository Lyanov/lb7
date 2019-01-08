require_relative 'lr7_1'
require 'minitest/autorun'

# Test handles tests
class Test < Minitest::Unit::TestCase
  def test_1
    write_to_file
    # temp = Tempfile.new('numg1.txt')
    read_from_file('numf.txt', 'numg1.txt')
    assert_equal(IO.read('numg1.txt'), [3, 6, 9].inject('') { |res, el| res + el.to_s + "\n" })
    # temp.unlink
  end
end
