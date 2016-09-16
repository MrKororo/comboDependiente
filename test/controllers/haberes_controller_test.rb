require 'test_helper'

class HaberesControllerTest < ActionController::TestCase
  setup do
    @habere = haberes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haberes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habere" do
    assert_difference('Habere.count') do
      post :create, habere: { subcategorium_id: @habere.subcategorium_id, sueldo_base: @habere.sueldo_base }
    end

    assert_redirected_to habere_path(assigns(:habere))
  end

  test "should show habere" do
    get :show, id: @habere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habere
    assert_response :success
  end

  test "should update habere" do
    patch :update, id: @habere, habere: { subcategorium_id: @habere.subcategorium_id, sueldo_base: @habere.sueldo_base }
    assert_redirected_to habere_path(assigns(:habere))
  end

  test "should destroy habere" do
    assert_difference('Habere.count', -1) do
      delete :destroy, id: @habere
    end

    assert_redirected_to haberes_path
  end
end
