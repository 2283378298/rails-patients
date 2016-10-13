require 'test_helper'
class <%= controller_class_name %>ControllerTest < BaseControllerTestCase
  setup do
    @<%= singular_name %> = create(:<%= singular_name%>, shop: shop)
    sign_in admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create <%= singular_name %>" do
    assert_difference('<%= class_name %>.count') do
      post :create, { <%= "#{singular_name}: { #{attributes_hash} }" %> }
    end
    assert_redirected_to <%= singular_name %>_path(<%= class_name %>.last)
  end

  test "should show <%= singular_name %>" do
    get :show, id: @<%= singular_name %>.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @<%= singular_name %>.id
    assert_response :success
  end

  test "should update <%= singular_name %>" do
    patch :update, { id: @<%= singular_name %>.id, <%= "#{singular_name}: { #{attributes_hash} }" %> }
    assert_redirected_to <%= singular_name %>_path(<%= "@#{singular_name}" %>)
  end

  test "should destroy <%= singular_name %>" do
    assert_difference('<%= class_name %>.count', -1) do
      delete :destroy, id: @<%= singular_name %>.id
    end
    assert_redirected_to <%= index_helper %>_path
  end
end