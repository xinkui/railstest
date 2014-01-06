require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:ash_1)
  end

  #stud example 1
  test "show_author_summary should set status to zombie summary use stub" do
    @tweet.zombie.stubs(:zombie_summary)
    @tweet.show_author_summary
    assert_equal @tweet.zombie.zombie_summary, @tweet.status,
                 'tweet status does not contain zombie summary'
  end

  #mock example 1
  test "show_author_summary should set status to zombie summary use mock" do
    @tweet.zombie.expects(:zombie_summary)
    actual = @tweet.show_author_summary
    assert_equal actual, @tweet.status,
                 'tweet status does not contain zombie summary'
  end

  #stubs and mock example
  test "show_author_summary should set status to zombie summary use stubs and mock" do
    @tweet.zombie.expects(:zombie_summary).returns('123')
    actual = @tweet.show_author_summary
    assert_equal '123', actual, 'tweet status does not contain zombie summary'
  end

end
