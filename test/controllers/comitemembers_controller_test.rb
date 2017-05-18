require 'test_helper'

class ComitemembersControllerTest < ActionController::TestCase
  setup do
    @comitemember = comitemembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comitemembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comitemember" do
    assert_difference('Comitemember.count') do
      post :create, comitemember: { committee_id: @comitemember.committee_id, member_id: @comitemember.member_id }
    end

    assert_redirected_to comitemember_path(assigns(:comitemember))
  end

  test "should show comitemember" do
    get :show, id: @comitemember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comitemember
    assert_response :success
  end

  test "should update comitemember" do
    patch :update, id: @comitemember, comitemember: { committee_id: @comitemember.committee_id, member_id: @comitemember.member_id }
    assert_redirected_to comitemember_path(assigns(:comitemember))
  end

  test "should destroy comitemember" do
    assert_difference('Comitemember.count', -1) do
      delete :destroy, id: @comitemember
    end

    assert_redirected_to comitemembers_path
  end
end
