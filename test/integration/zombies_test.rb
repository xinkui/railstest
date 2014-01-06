require 'test_helper'

class ZombiesTest < ActionDispatch::IntegrationTest
  test "Anyone can view zombie information" do
    zombie = zombies(:ash)
    get zombie_url(zombie)
    assert_response :success
  end
end
