require 'test_helper'

class GrcrdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grcrd = grcrds(:one)
  end

  test "should get index" do
    get grcrds_url
    assert_response :success
  end

  test "should get new" do
    get new_grcrd_url
    assert_response :success
  end

  test "should create grcrd" do
    assert_difference('Grcrd.count') do
      post grcrds_url, params: { grcrd: { g_email: @grcrd.g_email, g_idnum: @grcrd.g_idnum, g_nam1: @grcrd.g_nam1, g_name2: @grcrd.g_name2, g_photo: @grcrd.g_photo, g_title: @grcrd.g_title } }
    end

    assert_redirected_to grcrd_url(Grcrd.last)
  end

  test "should show grcrd" do
    get grcrd_url(@grcrd)
    assert_response :success
  end

  test "should get edit" do
    get edit_grcrd_url(@grcrd)
    assert_response :success
  end

  test "should update grcrd" do
    patch grcrd_url(@grcrd), params: { grcrd: { g_email: @grcrd.g_email, g_idnum: @grcrd.g_idnum, g_nam1: @grcrd.g_nam1, g_name2: @grcrd.g_name2, g_photo: @grcrd.g_photo, g_title: @grcrd.g_title } }
    assert_redirected_to grcrd_url(@grcrd)
  end

  test "should destroy grcrd" do
    assert_difference('Grcrd.count', -1) do
      delete grcrd_url(@grcrd)
    end

    assert_redirected_to grcrds_url
  end
end
