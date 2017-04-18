require 'test_helper'

class VaccinatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccinator = vaccinators(:one)
  end

  test "should get index" do
    get vaccinators_url
    assert_response :success
  end

  test "should get new" do
    get new_vaccinator_url
    assert_response :success
  end

  test "should create vaccinator" do
    assert_difference('Vaccinator.count') do
      post vaccinators_url, params: { vaccinator: { vac_email: @vaccinator.vac_email, vac_idnum: @vaccinator.vac_idnum, vac_name1: @vaccinator.vac_name1, vac_name2: @vaccinator.vac_name2, vac_photo: @vaccinator.vac_photo, vac_title: @vaccinator.vac_title, vendor_name: @vaccinator.vendor_name } }
    end

    assert_redirected_to vaccinator_url(Vaccinator.last)
  end

  test "should show vaccinator" do
    get vaccinator_url(@vaccinator)
    assert_response :success
  end

  test "should get edit" do
    get edit_vaccinator_url(@vaccinator)
    assert_response :success
  end

  test "should update vaccinator" do
    patch vaccinator_url(@vaccinator), params: { vaccinator: { vac_email: @vaccinator.vac_email, vac_idnum: @vaccinator.vac_idnum, vac_name1: @vaccinator.vac_name1, vac_name2: @vaccinator.vac_name2, vac_photo: @vaccinator.vac_photo, vac_title: @vaccinator.vac_title, vendor_name: @vaccinator.vendor_name } }
    assert_redirected_to vaccinator_url(@vaccinator)
  end

  test "should destroy vaccinator" do
    assert_difference('Vaccinator.count', -1) do
      delete vaccinator_url(@vaccinator)
    end

    assert_redirected_to vaccinators_url
  end
end
