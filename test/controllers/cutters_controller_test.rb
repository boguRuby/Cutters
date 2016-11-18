require 'test_helper'

class CuttersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cutter = cutters(:one)
  end

  test "should get index" do
    get cutters_url
    assert_response :success
  end

  test "should get new" do
    get new_cutter_url
    assert_response :success
  end

  test "should create cutter" do
    assert_difference('Cutter.count') do
      post cutters_url, params: { cutter: { description: @cutter.description, name: @cutter.name } }
    end

    assert_redirected_to cutter_url(Cutter.last)
  end

  test "should show cutter" do
    get cutter_url(@cutter)
    assert_response :success
  end

  test "should get edit" do
    get edit_cutter_url(@cutter)
    assert_response :success
  end

  test "should update cutter" do
    patch cutter_url(@cutter), params: { cutter: { description: @cutter.description, name: @cutter.name } }
    assert_redirected_to cutter_url(@cutter)
  end

  test "should destroy cutter" do
    assert_difference('Cutter.count', -1) do
      delete cutter_url(@cutter)
    end

    assert_redirected_to cutters_url
  end
end
