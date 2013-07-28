require 'test_helper'

class AnnouncementsControllerTest < ActionController::TestCase
  setup do
    @accouncement = accouncements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accouncements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accouncement" do
    assert_difference('Accouncement.count') do
      post :create, accouncement: { body: @accouncement.body, title: @accouncement.title }
    end

    assert_redirected_to accouncement_path(assigns(:accouncement))
  end

  test "should show accouncement" do
    get :show, id: @accouncement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accouncement
    assert_response :success
  end

  test "should update accouncement" do
    put :update, id: @accouncement, accouncement: { body: @accouncement.body, title: @accouncement.title }
    assert_redirected_to accouncement_path(assigns(:accouncement))
  end

  test "should destroy accouncement" do
    assert_difference('Accouncement.count', -1) do
      delete :destroy, id: @accouncement
    end

    assert_redirected_to accouncements_path
  end
end
