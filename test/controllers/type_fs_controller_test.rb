require 'test_helper'

class TypeFsControllerTest < ActionController::TestCase
  setup do
    @type_f = type_fs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_fs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_f" do
    assert_difference('TypeF.count') do
      post :create, type_f: { file: @type_f.file }
    end

    assert_redirected_to type_f_path(assigns(:type_f))
  end

  test "should show type_f" do
    get :show, id: @type_f
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_f
    assert_response :success
  end

  test "should update type_f" do
    patch :update, id: @type_f, type_f: { file: @type_f.file }
    assert_redirected_to type_f_path(assigns(:type_f))
  end

  test "should destroy type_f" do
    assert_difference('TypeF.count', -1) do
      delete :destroy, id: @type_f
    end

    assert_redirected_to type_fs_path
  end
end
