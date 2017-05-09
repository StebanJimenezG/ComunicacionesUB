require 'test_helper'

class TypeFilesControllerTest < ActionController::TestCase
  setup do
    @type_file = type_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_file" do
    assert_difference('TypeFile.count') do
      post :create, type_file: { file: @type_file.file }
    end

    assert_redirected_to type_file_path(assigns(:type_file))
  end

  test "should show type_file" do
    get :show, id: @type_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_file
    assert_response :success
  end

  test "should update type_file" do
    patch :update, id: @type_file, type_file: { file: @type_file.file }
    assert_redirected_to type_file_path(assigns(:type_file))
  end

  test "should destroy type_file" do
    assert_difference('TypeFile.count', -1) do
      delete :destroy, id: @type_file
    end

    assert_redirected_to type_files_path
  end
end
