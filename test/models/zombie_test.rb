require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  should validate_presence_of(:name)

  def setup
    @zombie = zombies(:ash)
  end

  test "invalid without a name" do
    z = Zombie.new
    assert !z.valid?, "Name is not being validated"
  end

  test "valid with all attributes"  do
      assert @zombie.valid?, "Zombie was not valid"
  end

  test "invalid name gives error message" do
      @zombie.name = nil
      @zombie.valid?
      assert_match /can't be blank/, @zombie.errors[:name].join,
                   "Presence error not found on Zombie"
  end

  test "can generate avatar_url" do
    assert_equal "http://zombitar.com/#{@zombie.id}.jpg", @zombie.avatar_url
  end

  test "should contain only tweets that belong to zombie" do
    assert @zombie.tweets.all? {|t| t.zombie == @zombie}
  end
end
