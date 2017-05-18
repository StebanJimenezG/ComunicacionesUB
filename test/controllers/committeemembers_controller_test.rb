require 'test_helper'

class CommitteemembersControllerTest < ActionController::TestCase
  test "should get committee_id:integer" do
    get :committee_id:integer
    assert_response :success
  end

  test "should get member_id:integer" do
    get :member_id:integer
    assert_response :success
  end

end
