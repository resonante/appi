require 'test_helper'

class GcmRegistrationsControllerTest < ActionController::TestCase
  setup do
    @gcm_registration = gcm_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gcm_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gcm_registration" do
    assert_difference('GcmRegistration.count') do
      post :create, gcm_registration: { gcm_registration_id: @gcm_registration.gcm_registration_id, user_id: @gcm_registration.user_id }
    end

    assert_redirected_to gcm_registration_path(assigns(:gcm_registration))
  end

  test "should show gcm_registration" do
    get :show, id: @gcm_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gcm_registration
    assert_response :success
  end

  test "should update gcm_registration" do
    patch :update, id: @gcm_registration, gcm_registration: { gcm_registration_id: @gcm_registration.gcm_registration_id, user_id: @gcm_registration.user_id }
    assert_redirected_to gcm_registration_path(assigns(:gcm_registration))
  end

  test "should destroy gcm_registration" do
    assert_difference('GcmRegistration.count', -1) do
      delete :destroy, id: @gcm_registration
    end

    assert_redirected_to gcm_registrations_path
  end
end
