require 'test/unit'

class MyTest < Test::Unit::TestCase

  def test_first
    assert true
  end

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    fail('Not implemented')
  end
end