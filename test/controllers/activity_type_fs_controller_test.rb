require 'test_helper'

class ActivityTypeFsControllerTest < ActionController::TestCase
  setup do
    @activity_type_f = activity_type_fs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_type_fs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_type_f" do
    assert_difference('ActivityTypeF.count') do
      post :create, activity_type_f: { id_activity: @activity_type_f.id_activity, id_type_f: @activity_type_f.id_type_f }
    end

    assert_redirected_to activity_type_f_path(assigns(:activity_type_f))
  end

  test "should show activity_type_f" do
    get :show, id: @activity_type_f
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_type_f
    assert_response :success
  end

  test "should update activity_type_f" do
    patch :update, id: @activity_type_f, activity_type_f: { id_activity: @activity_type_f.id_activity, id_type_f: @activity_type_f.id_type_f }
    assert_redirected_to activity_type_f_path(assigns(:activity_type_f))
  end

  test "should destroy activity_type_f" do
    assert_difference('ActivityTypeF.count', -1) do
      delete :destroy, id: @activity_type_f
    end

    assert_redirected_to activity_type_fs_path
  end
end
