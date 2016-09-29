require 'test_helper'

class AffsControllerTest < ActionController::TestCase
  setup do
    @aff = affs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aff" do
    assert_difference('Aff.count') do
      post :create, aff: { name: @aff.name }
    end

    assert_redirected_to aff_path(assigns(:aff))
  end

  test "should show aff" do
    get :show, id: @aff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aff
    assert_response :success
  end

  test "should update aff" do
    patch :update, id: @aff, aff: { name: @aff.name }
    assert_redirected_to aff_path(assigns(:aff))
  end

  test "should destroy aff" do
    assert_difference('Aff.count', -1) do
      delete :destroy, id: @aff
    end

    assert_redirected_to affs_path
  end
end
