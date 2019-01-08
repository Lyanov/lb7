require './filegen'
require 'minitest/autorun'

# Class for testing
class MyTest < Minitest::Test
  def setup; end

  def test_f_exist
    make_f_file './f exist.test'
    assert_equal true, File.exist?('./f exist.test')
  end

  def test_g_exist
    make_f_file './fg exist.test'
    make_g_file './g exist.test', './fg exist.test'
    assert_equal true, File.exist?('./g exist.test')
  end

  def test_g_test
    50.times do
      numbers = make_f_file './f.test'
      res = make_g_file './g.test', './f.test'
      assert_equal(numbers.uniq.sort, res.sort)
    end
  end

  def teardown
    File.delete './f exist.test' if File.exist?('./f exist.test')
    File.delete './fg exist.test' if File.exist?('./fg exist.test')
    File.delete './g exist.test' if File.exist?('./g exist.test')
    File.delete './f.test' if File.exist?('./f.test')
    File.delete './g.test' if File.exist?('./g.test')
  end
end
