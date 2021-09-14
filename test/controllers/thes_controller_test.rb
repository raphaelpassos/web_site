require "test_helper"

class ThesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @the = thes(:one)
  end

  test "should get index" do
    get thes_url
    assert_response :success
  end

  test "should get new" do
    get new_the_url
    assert_response :success
  end

  test "should create the" do
    assert_difference('The.count') do
      post thes_url, params: { the: { Agency: @the.Agency, description: @the.description, title: @the.title } }
    end

    assert_redirected_to the_url(The.last)
  end

  test "should show the" do
    get the_url(@the)
    assert_response :success
  end

  test "should get edit" do
    get edit_the_url(@the)
    assert_response :success
  end

  test "should update the" do
    patch the_url(@the), params: { the: { Agency: @the.Agency, description: @the.description, title: @the.title } }
    assert_redirected_to the_url(@the)
  end

  test "should destroy the" do
    assert_difference('The.count', -1) do
      delete the_url(@the)
    end

    assert_redirected_to thes_url
  end
end
