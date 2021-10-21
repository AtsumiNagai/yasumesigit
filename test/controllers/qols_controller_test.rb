require "test_helper"

class QolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qols_index_url
    assert_response :success
  end

  test "should get new" do
    get qols_new_url
    assert_response :success
  end

  test "should get show" do
    get qols_show_url
    assert_response :success
  end

  test "should get edit" do
    get qols_edit_url
    assert_response :success
  end
end
