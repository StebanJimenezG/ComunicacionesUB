require 'test_helper'

class CommitteesControllerTest < ActionController::TestCase
  setup do
    @committee = committees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committee" do
    assert_difference('Committee.count') do
      post :create, committee: { baner: @committee.baner, descripcion: @committee.descripcion, id_activity: @committee.id_activity, id_member: @committee.id_member, logo: @committee.logo, nombre: @committee.nombre }
    end

    assert_redirected_to committee_path(assigns(:committee))
  end

  test "should show committee" do
    get :show, id: @committee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committee
    assert_response :success
  end

  test "should update committee" do
    patch :update, id: @committee, committee: { baner: @committee.baner, descripcion: @committee.descripcion, id_activity: @committee.id_activity, id_member: @committee.id_member, logo: @committee.logo, nombre: @committee.nombre }
    assert_redirected_to committee_path(assigns(:committee))
  end

  test "should destroy committee" do
    assert_difference('Committee.count', -1) do
      delete :destroy, id: @committee
    end

    assert_redirected_to committees_path
  end
end
